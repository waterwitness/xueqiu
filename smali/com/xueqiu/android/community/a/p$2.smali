.class final Lcom/xueqiu/android/community/a/p$2;
.super Ljava/lang/Object;
.source "PublicTimelineAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/PublicTimeline;

.field final synthetic b:Lcom/xueqiu/android/community/a/p;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/p;Lcom/xueqiu/android/community/model/PublicTimeline;)V
    .locals 0

    .prologue
    .line 808
    iput-object p1, p0, Lcom/xueqiu/android/community/a/p$2;->b:Lcom/xueqiu/android/community/a/p;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/p$2;->a:Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 811
    iget-object v0, p0, Lcom/xueqiu/android/community/a/p$2;->a:Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/PublicTimeline;->getTarget()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/p$2;->b:Lcom/xueqiu/android/community/a/p;

    iget-object v1, v1, Lcom/xueqiu/android/community/a/p;->j:Lcom/xueqiu/android/community/a/o;

    invoke-static {v1}, Lcom/xueqiu/android/community/a/o;->a(Lcom/xueqiu/android/community/a/o;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 812
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x44c

    iget-object v2, p0, Lcom/xueqiu/android/community/a/p$2;->a:Lcom/xueqiu/android/community/model/PublicTimeline;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/PublicTimeline;->getCategory()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/xueqiu/android/community/a/o;->a(II)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 813
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 814
    return-void
.end method
