.class Lcom/kwlopen/sdk/activity/KwlOpenActivity$2;
.super Lorg/apache/cordova/e;
.source "KwlOpenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kwlopen/sdk/activity/KwlOpenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kwlopen/sdk/activity/KwlOpenActivity;


# direct methods
.method constructor <init>(Lcom/kwlopen/sdk/activity/KwlOpenActivity;Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity$2;->this$0:Lcom/kwlopen/sdk/activity/KwlOpenActivity;

    invoke-direct {p0, p2, p3}, Lorg/apache/cordova/e;-><init>(Lorg/apache/cordova/f;Lorg/apache/cordova/CordovaWebView;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 152
    invoke-super {p0, p1, p2}, Lorg/apache/cordova/e;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 153
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity$2;->this$0:Lcom/kwlopen/sdk/activity/KwlOpenActivity;

    # getter for: Lcom/kwlopen/sdk/activity/KwlOpenActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->access$000(Lcom/kwlopen/sdk/activity/KwlOpenActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 154
    const-string v0, "onProgressChanged"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity$2;->this$0:Lcom/kwlopen/sdk/activity/KwlOpenActivity;

    # getter for: Lcom/kwlopen/sdk/activity/KwlOpenActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->access$000(Lcom/kwlopen/sdk/activity/KwlOpenActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity$2;->this$0:Lcom/kwlopen/sdk/activity/KwlOpenActivity;

    invoke-virtual {v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->stopRefresh()V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity$2;->this$0:Lcom/kwlopen/sdk/activity/KwlOpenActivity;

    # getter for: Lcom/kwlopen/sdk/activity/KwlOpenActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->access$000(Lcom/kwlopen/sdk/activity/KwlOpenActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 160
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/KwlOpenActivity$2;->this$0:Lcom/kwlopen/sdk/activity/KwlOpenActivity;

    # getter for: Lcom/kwlopen/sdk/activity/KwlOpenActivity;->progressBar:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/kwlopen/sdk/activity/KwlOpenActivity;->access$000(Lcom/kwlopen/sdk/activity/KwlOpenActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
