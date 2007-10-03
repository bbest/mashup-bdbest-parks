<gm:page title="Task List" authenticate="true">

  <table width="100%">
    <tr>
      <td width="50%">
        <gm:list id="Projects" data="${app}/Projects" template="simpleProjects"/>
      </td>
     <td width="50%">
       <gm:list id="tasks" data="${Projects}/tasks" template="simpleTasks">
         <gm:handleEvent src="Projects"/>
       </gm:list>
     </td>
    </tr>
  </table>

  <gm:template id="simpleProjects">

    <div repeat="true">
      <gm:text ref="atom:title"/>
      <gm:editButtons/>
    </div>

    <gm:create label="New Project"/>

  </gm:template>


  <gm:template id="simpleTasks">
    <table width="100%">
      <tr repeat="true">
        <td><gm:text ref="atom:title"/></td>
        <td><gm:date ref="gd:when/@startTime"/></td>
        <td><gm:editButtons deleteOnly="true"/></td>
      </tr>
    </table>

    <gm:create label="new task"/>

  </gm:template>

</gm:page>