.class final Lorg/apache/cordova/e$9;
.super Ljava/lang/Object;
.source "CordovaChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/e;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/JsPromptResult;

.field final synthetic b:Lorg/apache/cordova/e;


# direct methods
.method constructor <init>(Lorg/apache/cordova/e;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lorg/apache/cordova/e$9;->b:Lorg/apache/cordova/e;

    iput-object p2, p0, Lorg/apache/cordova/e$9;->a:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/cordova/e$9;->a:Landroid/webkit/JsPromptResult;

    invoke-virtual {v0}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 279
    return-void
.end method
