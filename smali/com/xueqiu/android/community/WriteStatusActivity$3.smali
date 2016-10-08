.class final Lcom/xueqiu/android/community/WriteStatusActivity$3;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$3;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 641
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$3;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->q(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    .line 642
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$3;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->r(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$3;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->s(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$3;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->t(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$3;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    .line 643
    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->n(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$3;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->n(Lcom/xueqiu/android/community/WriteStatusActivity;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$3;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    .line 644
    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->p(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$3;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->k(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 648
    :cond_1
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0xc1c

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 650
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 651
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$3;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->u(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 652
    return-void
.end method
