.class final Lcom/xueqiu/android/base/c/b$5$1$1;
.super Ljava/lang/Object;
.source "IPManager.java"

# interfaces
.implements Lrx/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/base/c/b$5$1;->a(Lcom/android/volley/y;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/base/c/b$5$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/base/c/b$5$1;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/xueqiu/android/base/c/b$5$1$1;->a:Lcom/xueqiu/android/base/c/b$5$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/xueqiu/android/base/c/b$5$1$1;->a:Lcom/xueqiu/android/base/c/b$5$1;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$5$1;->a:Lcom/xueqiu/android/base/c/b$5;

    iget-object v0, v0, Lcom/xueqiu/android/base/c/b$5;->b:Lcom/xueqiu/android/base/c/b;

    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/c/b;->refresh(Lcom/xueqiu/android/base/q;)V

    .line 296
    return-void
.end method
