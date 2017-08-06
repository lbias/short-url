class UrlForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      original_url: '',
      errors: ''
    }
    this.handleChange = this.handleChange.bind(this);
    this.handleClick  = this.handleClick.bind(this);
  }

  handleUrlCreated(url) {
    this.props.handleUrlCreated(url);
  }

  handleClick() {
    const self = this;
    if(this.state.original_url) {
      $.ajax({
        method: 'POST',
        url: '/api/v1/urls',
        data: {url: this.state},
        success: (response, status, xhr) => {
          self.handleUrlCreated(response)
        },
        error: (error) => {
          self.setState({ errors: error.responseText });
        }
      });
    }
    else {
      this.setState({errors: 'Url cannot be blank'})
    }
  }

  handleChange(e) {
    let url = e.target.url;
    this.setState({[url]: e.target.value});
  }

  render() {
    return(
      <div>
        <input type='text' onChange={this.handleChange} url='original_url'/>
        <span className='hint'>format: http://example.com</span>
        <div classUrl='error'>{this.state.errors}</div>
        <button onClick={this.handleClick}>Create</button>
      </div>
    );
  }
}
