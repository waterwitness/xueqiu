.class final Lcom/xueqiu/android/community/StatusDetailActivity$4;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/User;

.field final synthetic b:Lcom/xueqiu/android/base/b/p;

.field final synthetic c:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;Lcom/xueqiu/android/community/model/User;Lcom/xueqiu/android/base/b/p;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$4;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/community/StatusDetailActivity$4;->a:Lcom/xueqiu/android/community/model/User;

    iput-object p3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$4;->b:Lcom/xueqiu/android/base/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 705
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$4;->c:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/StatusDetailActivity;->h()Landroid/app/Dialog;

    .line 707
    iget-object v0, p0, Lcom/xueqiu/android/community/StatusDetailActivity$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    .line 708
    invoke-static {}, Lcom/xueqiu/android/community/StatusDetailActivity;->g()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$4;->a:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    iget-object v3, p0, Lcom/xueqiu/android/community/StatusDetailActivity$4;->b:Lcom/xueqiu/android/base/b/p;

    invoke-virtual {v2, v4, v5, v3}, Lcom/xueqiu/android/base/b/ai;->i(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 710
    new-instance v2, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v3, 0x6a4

    const/16 v4, 0x8

    invoke-direct {v2, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 711
    const-string v3, "uid"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 712
    invoke-virtual {v0, v2}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 713
    return-void
.end method
