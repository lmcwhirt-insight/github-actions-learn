//using NUnit.Framework;
//using System.Collections.Generic;
//using System.Linq;
//using Microsoft.AspNetCore.Mvc;
//using Microsoft.Extensions.Logging;

//using GitHubActionsWebApi.Controllers;
//using GitHubActionsWebApi;


//namespace GitHubActionsWebApiTest;

//public class Tests
//{
//    private WeatherForecastController _controller;

//    [SetUp]
//    public void Setup()
//    {

//        var loggerFactory = LoggerFactory.Create(builder =>
//        {
//            builder
//                .AddConsole()
//                .SetMinimumLevel(LogLevel.Information);
//        });

//        ILogger<WeatherForecastController> logger = loggerFactory.CreateLogger<WeatherForecastController>();
//        _controller = new WeatherForecastController(logger);
//    }

//    [Test]
//    public void Get_ShouldReturnWeatherForecasts()
//    {
//        var result = _controller.Get();

//        Assert.That(result is not null);
//        Assert.That(result, Is.InstanceOf<WeatherForecast[]>());
//    }
//}
