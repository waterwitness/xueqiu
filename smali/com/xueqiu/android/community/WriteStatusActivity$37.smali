.class final Lcom/xueqiu/android/community/WriteStatusActivity$37;
.super Ljava/lang/Object;
.source "WriteStatusActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 1903
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$37;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1906
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$37;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$37;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->T(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->e(Lcom/xueqiu/android/community/WriteStatusActivity;Z)Z

    .line 1907
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$37;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const v1, 0x7f0e0321

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1908
    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$37;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->T(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1909
    return-void

    .line 1906
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
