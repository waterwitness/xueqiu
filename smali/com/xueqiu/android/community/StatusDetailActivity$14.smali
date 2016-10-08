.class final Lcom/xueqiu/android/community/StatusDetailActivity$14;
.super Ljava/lang/Object;
.source "StatusDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/StatusDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/StatusDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/StatusDetailActivity;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$14;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1014
    const v0, 0x7f0e076c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/xueqiu/android/community/StatusDetailActivity$14;->a:Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/StatusDetailActivity;->r(Lcom/xueqiu/android/community/StatusDetailActivity;)V

    .line 1017
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    :cond_0
    return-void
.end method
