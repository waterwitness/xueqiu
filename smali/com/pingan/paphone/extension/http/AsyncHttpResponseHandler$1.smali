.class Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler$1;
.super Landroid/os/Handler;
.source "AsyncHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;-><init>()V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;


# direct methods
.method constructor <init>(Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler$1;->this$0:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler$1;->this$0:Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;

    invoke-virtual {v0, p1}, Lcom/pingan/paphone/extension/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 88
    return-void
.end method
