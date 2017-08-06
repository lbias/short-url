class UrlItem extends React.Component {
  render() {
    return(
      <tr>
        <td>{this.props.index}</td>
        <td>
          <a href={this.props.url.short_link} target='_blank'>{this.props.url.short_link}</a>
        </td>
        <td>
          {this.props.url.original_url}
        </td>
      </tr>
    );
  }
}
