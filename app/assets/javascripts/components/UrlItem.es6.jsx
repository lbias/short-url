class UrlItem extends React.Component {
  render() {
    let url = this.props
    return(
      <tr>
        <td>{this.props.index}</td>
        <td>
          {this.props.url.short_link}
        </td>
        <td>
          {this.props.url.original_url}
        </td>
      </tr>
    );
  }
}
