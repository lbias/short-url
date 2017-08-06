class UrlList extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      urls: []
    }

    this.handleUrlCreated = this.handleUrlCreated.bind(this);
  }

  handleUrlCreated(url) {
    let urls = this.state.urls.slice();
    urls.push(url);
    this.setState({urls: urls});
  }

  render() {
    let urls = this.state.urls.map((url, index) =>
      <UrlItem key={index} url={url} index={index}/>
    );
    return(
      <div>
        <UrlForm handleUrlCreated={this.handleUrlCreated}/>
        <table>
          <thead>
            <tr>
              <th>No</th>
              <th>Short Url</th>
              <th>Original Url</th>
            </tr>
          </thead>
          <tbody>
            {urls}
          </tbody>
        </table>
      </div>
    );
  }

  componentDidMount() {
    const self = this;
    $.get({
      url:'/api/v1/urls.json',
      success: (data) =>
        self.setState({urls: data})
    })
  }
}
