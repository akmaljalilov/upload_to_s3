package main

import (
	swagger "github.com/arsmn/fiber-swagger/v2"
	"github.com/gofiber/fiber/v2"
	"log"
	"velox/upload_to_s3/model"
)
import _ "velox/upload_to_s3/docs"

// @title TEST API
// @version 1.0
// @description API Server for Test

// @in header
// @name Authorization
// @schemes http https
// @host localhost:5000
// @BasePath /
func main() {
	app := fiber.New()
	SwaggerRoute(app)
	app.Get("", initRoute)
	err := app.Listen(":5000")
	log.Fatalln(err)
}

// @Summary test
// @Tags Test
// @Description Test
// @ID test
// @Accept json
// @Produce json
// @Success 200 {object} model.Message
// @Router / [get]
func initRoute(ctx *fiber.Ctx) error {
	return ctx.JSON(model.Message{
		Msg: "Hello!",
	})
}

// SwaggerRoute func for describe group of API Docs routes.
func SwaggerRoute(a fiber.Router) {
	// Create routes group.
	route := a.Group("/swagger")

	// Routes for GET method:
	route.Get("*", swagger.Handler) // get one user by ID
}
