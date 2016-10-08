.class final Lcom/xueqiu/android/community/c/j$3$1;
.super Lcom/xueqiu/android/base/b/p;
.source "LiveNewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/c/j$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/c/j$3;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/j$3;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/xueqiu/android/community/c/j$3$1;->a:Lcom/xueqiu/android/community/c/j$3;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 208
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 209
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 205
    check-cast p1, Ljava/lang/Integer;

    .line 1213
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j$3$1;->a:Lcom/xueqiu/android/community/c/j$3;

    iget-object v0, v0, Lcom/xueqiu/android/community/c/j$3;->a:Lcom/xueqiu/android/community/c/j;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c/j;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    iget-object v0, p0, Lcom/xueqiu/android/community/c/j$3$1;->a:Lcom/xueqiu/android/community/c/j$3;

    iget-object v0, v0, Lcom/xueqiu/android/community/c/j$3;->a:Lcom/xueqiu/android/community/c/j;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/c/j;->b(Lcom/xueqiu/android/community/c/j;I)V

    .line 205
    :cond_0
    return-void
.end method
