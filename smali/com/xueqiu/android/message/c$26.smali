.class final Lcom/xueqiu/android/message/c$26;
.super Lcom/xueqiu/android/base/b/p;
.source "RecentTalkFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/c;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Lcom/xueqiu/android/message/model/ApplyCount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/c;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/c;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 848
    iput-object p1, p0, Lcom/xueqiu/android/message/c$26;->a:Lcom/xueqiu/android/message/c;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 0

    .prologue
    .line 851
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 852
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 848
    check-cast p1, Lcom/xueqiu/android/message/model/ApplyCount;

    .line 1856
    iget-object v0, p0, Lcom/xueqiu/android/message/c$26;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    .line 2481
    iput-object p1, v0, Lcom/xueqiu/android/message/a/z;->b:Lcom/xueqiu/android/message/model/ApplyCount;

    .line 1857
    iget-object v0, p0, Lcom/xueqiu/android/message/c$26;->a:Lcom/xueqiu/android/message/c;

    invoke-static {v0}, Lcom/xueqiu/android/message/c;->e(Lcom/xueqiu/android/message/c;)Lcom/xueqiu/android/message/a/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/z;->notifyDataSetChanged()V

    .line 848
    return-void
.end method
