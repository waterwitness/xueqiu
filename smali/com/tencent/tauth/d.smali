.class final Lcom/tencent/tauth/d;
.super Landroid/webkit/WebChromeClient;
.source "TAuthView.java"


# instance fields
.field final synthetic a:Lcom/tencent/tauth/TAuthView;


# direct methods
.method private constructor <init>(Lcom/tencent/tauth/TAuthView;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/tencent/tauth/d;->a:Lcom/tencent/tauth/TAuthView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 219
    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/tauth/TAuthView;B)V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/tencent/tauth/d;-><init>(Lcom/tencent/tauth/TAuthView;)V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    return v0
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 223
    return-void
.end method
