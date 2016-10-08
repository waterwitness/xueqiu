.class final Lcom/xueqiu/android/common/UserGuideActivity$1;
.super Ljava/lang/Object;
.source "UserGuideActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/UserGuideActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/UserGuideActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/UserGuideActivity;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/xueqiu/android/common/UserGuideActivity$1;->a:Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 78
    if-eqz p2, :cond_0

    .line 80
    invoke-static {}, Lcom/xueqiu/android/common/UserGuideActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/common/UserGuideActivity$1;->a:Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/UserGuideActivity;->a(Lcom/xueqiu/android/common/UserGuideActivity;)Lcom/xueqiu/android/base/b/p;

    move-result-object v1

    .line 2223
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, p1, v1}, Lcom/xueqiu/android/base/b/an;->e(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/UserGuideActivity$1;->a:Lcom/xueqiu/android/common/UserGuideActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/UserGuideActivity;->b(Lcom/xueqiu/android/common/UserGuideActivity;)V

    .line 85
    return-void
.end method
