namespace Microsoft.AspNetCore.Builder;

using Reservations.Identity;

public static class MiddlewareExtensions
{
    public static IApplicationBuilder UseAdMiddleware(this IApplicationBuilder builder) =>
        builder.UseMiddleware<AdUserMiddleware>();
}