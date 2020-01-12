<!doctype html>
<html>
<head>
    <#include "/general_page_style.ftl">
    <title>Broker</title>
</head>
<body>
<div class="container">
    <#include "/general_page_nav.ftl">

    <h2 class="border-bottom">My Projects</h2>
    <a href="/create_broker_project" class="btn btn-primary float-right">New Project</a>
    <br /> <br />
    <table class="table table-striped table-hover">
        <thead>
        <tr>
            <th>Name</th>
            <th>Original url</th>
            <th>Token</th>
            <th>Enabled</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <#list brokerProjects as project>
        <tr>
            <td>${project.name}</td>
            <td>${project.originalUrl}</td>
            <td>${project.token}</td>
            <td>${project.enabled}</td>
            <td>
                <a href="/view_broker_project_response?brokerProjectToken=${project.token}">View response rule</a>
                <a href="/edit_broker_project?brokerProjectToken=${project.token}">Edit project</a>
            </td>
        </tr>
        </#list>
    </tbody>
</table>
</div>
<#include "/general_page_script.ftl">
</body>
        </html>