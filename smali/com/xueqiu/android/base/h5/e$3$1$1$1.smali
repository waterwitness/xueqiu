.class final Lcom/xueqiu/android/base/h5/e$3$1$1$1;
.super Ljava/lang/Object;
.source "H5Manager.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/h5/e$3$1$1;->a()V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xueqiu/android/base/h5/e$3$1$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/h5/e$3$1$1;Z)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/xueqiu/android/base/h5/e$3$1$1$1;->b:Lcom/xueqiu/android/base/h5/e$3$1$1;

    iput-boolean p2, p0, Lcom/xueqiu/android/base/h5/e$3$1$1$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 164
    new-instance v0, Landroid/webkit/WebView;

    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 165
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 166
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/e$3$1$1$1;->b:Lcom/xueqiu/android/base/h5/e$3$1$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e$3$1$1;->b:Lcom/xueqiu/android/base/h5/e$3$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e$3$1;->a:Lrx/i;

    iget-boolean v1, p0, Lcom/xueqiu/android/base/h5/e$3$1$1$1;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/i;->a(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/base/h5/e$3$1$1$1;->b:Lcom/xueqiu/android/base/h5/e$3$1$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e$3$1$1;->b:Lcom/xueqiu/android/base/h5/e$3$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/h5/e$3$1;->a:Lrx/i;

    invoke-virtual {v0}, Lrx/i;->a()V

    .line 169
    return-void
.end method
