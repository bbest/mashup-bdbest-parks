<gm:page title="Edit Park Points" authenticate="true">

  <!-- Here we create the list to display the data we save in 
        the $app/pts feed -->

  <gm:list id="myList" data="${app}/pts" template="ptsTemplate"/>

  <!-- Here we create the template that contains edit
        and delete buttons. We also specify a create button to add
        data to the feed. -->

  <gm:template id="ptsTemplate">
    <table>
      <thead>
        <tr>
          <td>title</td>
          <td>description</td>
          <td>datemod</td>
          <td>image</td>
          <td>link</td>
          <td>lat</td>
          <td>lon</td>
        </tr>
      </thead>
      <tbody repeat="true">
        <tr>
          <td><gm:text ref="atom:title"/></td>
          <td><gm:textarea ref="atom:description"/></td>
          <td><gm:date ref="atom:datemod"/></td>
          <td><gm:image ref="atom:image"/></td>
          <td><gm:link ref="atom:link"/></td>
          <td><gm:number ref="atom:lat"/></td>
          <td><gm:number ref="atom:lon"/></td>
          <td><gm:editButtons /></td>
        </tr>
      </tbody>
    </table>
    <gm:create label="Create new entry"/>
  </gm:template>  

</gm:page>