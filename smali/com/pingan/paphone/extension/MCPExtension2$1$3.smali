.class Lcom/pingan/paphone/extension/MCPExtension2$1$3;
.super Ljava/lang/Object;
.source "MCPExtension2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pingan/paphone/extension/MCPExtension2$1;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pingan/paphone/extension/MCPExtension2$1;


# direct methods
.method constructor <init>(Lcom/pingan/paphone/extension/MCPExtension2$1;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/pingan/paphone/extension/MCPExtension2$1$3;->this$0:Lcom/pingan/paphone/extension/MCPExtension2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    # operator++ for: Lcom/pingan/paphone/extension/MCPExtension2;->count:I
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$208()I

    .line 210
    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->count:I
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$200()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getExtension-->\u5ef6\u65f65\u79d2\u91cd\u65b0\u6267\u884c--count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->count:I
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0}, Lcom/pingan/paphone/utils/LogM;->i(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$1$3;->this$0:Lcom/pingan/paphone/extension/MCPExtension2$1;

    iget-object v0, v0, Lcom/pingan/paphone/extension/MCPExtension2$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/pingan/paphone/extension/MCPExtension2$1$3;->this$0:Lcom/pingan/paphone/extension/MCPExtension2$1;

    iget-object v1, v1, Lcom/pingan/paphone/extension/MCPExtension2$1;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/pingan/paphone/extension/MCPExtension2;->getExtension(Landroid/content/Context;Landroid/os/Handler;)V

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getExtension-->\u91cd\u8bd5\u6b21\u6570\u8fbe\u5230\u4e0a\u9650---count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    # getter for: Lcom/pingan/paphone/extension/MCPExtension2;->count:I
    invoke-static {}, Lcom/pingan/paphone/extension/MCPExtension2;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lcom/pingan/paphone/utils/LogM;->i(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x0

    # setter for: Lcom/pingan/paphone/extension/MCPExtension2;->count:I
    invoke-static {v0}, Lcom/pingan/paphone/extension/MCPExtension2;->access$202(I)I

    .line 218
    iget-object v0, p0, Lcom/pingan/paphone/extension/MCPExtension2$1$3;->this$0:Lcom/pingan/paphone/extension/MCPExtension2$1;

    iget-object v0, v0, Lcom/pingan/paphone/extension/MCPExtension2$1;->val$handler:Landroid/os/Handler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
