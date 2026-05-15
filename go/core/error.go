package core

type BuddhaQuotesError struct {
	IsBuddhaQuotesError bool
	Sdk              string
	Code             string
	Msg              string
	Ctx              *Context
	Result           any
	Spec             any
}

func NewBuddhaQuotesError(code string, msg string, ctx *Context) *BuddhaQuotesError {
	return &BuddhaQuotesError{
		IsBuddhaQuotesError: true,
		Sdk:              "BuddhaQuotes",
		Code:             code,
		Msg:              msg,
		Ctx:              ctx,
	}
}

func (e *BuddhaQuotesError) Error() string {
	return e.Msg
}
