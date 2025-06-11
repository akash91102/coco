// Replace the XMARGIN section in your main component with this:

{ view === 'form' && (appState.lob === XMARGIN) &&
  <Fragment>
    {this.renderOnTab(formTab, subview)}
    {subview === 'xmProfileParameters' ? (
      <div style={{width: '100%'}}>
        <XMProileParameters 
          userInfo={this.props.userInfo}
          onCancel={onCancel} 
          onSave={onSave}  
          onSubmit={onSubmit}
          onFormUpdate={onFormUpdate}
          onTableUpdate={onTableUpdate}
          data={entryData}                    // ← This passes the API data!
          onCustFormUpdate={onCustFormUpdate} // ← This handles form updates!
          onTerminate={onTerminate}
          onActivate={onActivate}
          staticData={staticData}
          appState={appState}                 // ← Added for LOB info
        />
      </div>
    ) : null}
    {subview === 'xmMarginEntity' ? (
      <div style={{width: '100%'}}>
        {'APPLICATION INFO xmMarginEntity'} 
      </div>
    ) : null}
    {subview === 'xmProduct' ? (
      <div style={{width: '100%'}}>
        {'APPLICATION INFO xmProduct'} 
      </div>
    ) : null}
    {subview === 'xmStatement' ? (
      <div style={{width: '100%'}}>
        {'APPLICATION INFO xmStatement'} 
      </div>
    ) : null}
  </Fragment>}
