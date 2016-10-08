.class final Lorg/apache/cordova/e$8;
.super Ljava/lang/Object;
.source "CordovaChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/e;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/webkit/JsPromptResult;

.field final synthetic c:Lorg/apache/cordova/e;


# direct methods
.method constructor <init>(Lorg/apache/cordova/e;Landroid/widget/EditText;Landroid/webkit/JsPromptResult;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lorg/apache/cordova/e$8;->c:Lorg/apache/cordova/e;

    iput-object p2, p0, Lorg/apache/cordova/e$8;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/apache/cordova/e$8;->b:Landroid/webkit/JsPromptResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lorg/apache/cordova/e$8;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lorg/apache/cordova/e$8;->b:Landroid/webkit/JsPromptResult;

    invoke-virtual {v1, v0}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    .line 273
    return-void
.end method
