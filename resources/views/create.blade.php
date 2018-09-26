@include('partials.header_area')

<div class="container">
    <div class="row">
        <div class="col-md-8 col-sm-7 fa fa-font-awesome"><br><br><br><br>
            <form action="{{ route('posts.store') }}" method="POST">
                {{ csrf_field() }}
                <input type="hidden" name="user_id" value="{{ Auth::id() }}" />
                <input type="hidden" name="post_type" value="post" />

                <div class="form-group{{ $errors->has('title') ? ' has-error' : '' }}">
                    <label class="form-group" for="title">Titolo</label> <br/>
                    <input class="form-control" type="text" name="title" id="title" value="{{ old('title') }}" placeholder="Titolo" />

                    @if ($errors->has('title'))
                        <span class="help-block">
	                                <strong>{{ $errors->first('title') }}</strong>
	                            </span>
                    @endif
                </div>

                <div class="form-group{{ $errors->has('post_slug') ? ' has-error' : '' }}">
                    <label class="form-group" for="post_slug">Url Notizia</label> <br/>
                    <input class="form-control" type="text" name="post_slug" id="post_slug" value="{{ old('post_slug') }}" placeholder="titolo-notizia-esempio" />

                    @if ($errors->has('post_slug'))
                        <span class="help-block">
	                                <strong>{{ $errors->first('post_slug') }}</strong>
	                            </span>
                    @endif
                </div>

                <div class="form-group{{ $errors->has('preview') ? ' has-error' : '' }}">
                    <label class="form-group" for="preview">Anteprima</label> <br/>
                    <input class="form-control" type="text" name="preview" id="preview" value="{{ old('preview') }}" placeholder="Anteprima Notizia"/>

                    @if ($errors->has('preview'))
                        <span class="help-block">
	                                <strong>{{ $errors->first('preview') }}</strong>
	                            </span>
                    @endif
                </div>

                <div class="form-group{{ $errors->has('content') ? ' has-error' : '' }}">
                    <label class="form-group" for="content">Corpo Notizia</label> <br/>
                    <textarea class="form-control" name="content" id="content" rows="10" placeholder="Notizia">{{ old('content') }}</textarea>

                    @if ($errors->has('content'))
                        <span class="help-block">
	                                <strong>{{ $errors->first('content') }}</strong>
	                            </span>
                    @endif
                </div>
    <input type="submit" value="Pubblica" class="btn btn-outline-secondary">
</form>
    </div>
    </div>
</div>

@include('partials.footer_area')