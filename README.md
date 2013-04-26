hasRole([role]): Returns true if the current principal has the specified role.
hasAnyRole([role1,role2]): Returns true if the current principal has any of the supplied roles (given as a comma-separated list of strings)
principal: Allows direct access to the principal object representing the current user
authentication: Allows direct access to the current Authentication object obtained from the SecurityContext
permitAll: Always evaluates to true
denyAll: Always evaluates to false
isAnonymous(): Returns true if the current principal is an anonymous user
isRememberMe(): Returns true if the current principal is a remember-me user
isAuthenticated(): Returns true if the user is not anonymous
isFullyAuthenticated(): Returns true if the user is not an anonymous or a remember-me user


<sec:authorize access="hasRole('admin')">
    <table>
        <tr>
            <td>xxx</td>
            <!-- Some administrator data here -->
        </tr>
    </table>
</sec:authorize>
 
<sec:authorize access="hasRole('guest')">
    Restricted data, you are not allowed to access this resource    
</sec:authorize>


The Authentication interface exposes the following methods:
authorities: collection of GrantedAuthority instances. Corresponds in most case to user roles
credentials: user’ credentials (usually password)
details: object containing the details of the authentication process itself. The content of this object depends on the implementation of the Authentication interface. The default implementation returns null
principal: the principal object, which is most of the time an instance of the UserDetails interface
isAuthenticated: return true or false whether the use is authenticated or not

<sec:authentication property="authorities" var="roles" scope="page" />
<sec:authentication property="principal.username"/>


http://www.java-forums.org/blogs/spring-framework/534-using-spel-spring-security.html

https://code.google.com/p/spring3-security-mvc-integration-tutorial/downloads/list