.class final Lcom/xueqiu/android/base/h5/o$1;
.super Ljava/lang/Object;
.source "WebviewErrorHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/o;-><init>(Landroid/webkit/WebView;Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/h5/o;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/o;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/o$1;->a:Lcom/xueqiu/android/base/h5/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o$1;->a:Lcom/xueqiu/android/base/h5/o;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/o;->a(Lcom/xueqiu/android/base/h5/o;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o$1;->a:Lcom/xueqiu/android/base/h5/o;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/o;->b(Lcom/xueqiu/android/base/h5/o;)Z

    .line 39
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o$1;->a:Lcom/xueqiu/android/base/h5/o;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/o;->c(Lcom/xueqiu/android/base/h5/o;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 40
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o$1;->a:Lcom/xueqiu/android/base/h5/o;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/o;->d(Lcom/xueqiu/android/base/h5/o;)Z

    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/o$1;->a:Lcom/xueqiu/android/base/h5/o;

    invoke-static {v0}, Lcom/xueqiu/android/base/h5/o;->e(Lcom/xueqiu/android/base/h5/o;)V

    goto :goto_0
.end method
