.class final Lcom/xueqiu/android/common/y$2;
.super Ljava/lang/Object;
.source "SuggestedFollowsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/y;->a(ZLcom/android/volley/y;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/y;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/y;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/xueqiu/android/common/y$2;->a:Lcom/xueqiu/android/common/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/xueqiu/android/common/y$2;->a:Lcom/xueqiu/android/common/y;

    .line 2139
    invoke-virtual {v0}, Lcom/xueqiu/android/common/y;->x()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 2208
    new-instance v2, Lcom/xueqiu/android/common/y$3;

    invoke-direct {v2, v0, v0}, Lcom/xueqiu/android/common/y$3;-><init>(Lcom/xueqiu/android/common/y;Lcom/xueqiu/android/base/b/q;)V

    .line 2233
    iget-object v0, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/b/an;->g(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 130
    return-void
.end method
