.class final Lcom/xueqiu/android/community/WriteStatusActivity$7;
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
    .line 742
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$7;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 745
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$7;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->q(Lcom/xueqiu/android/community/WriteStatusActivity;)Z

    .line 746
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$7;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->b(Lcom/xueqiu/android/community/WriteStatusActivity;I)I

    .line 747
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$7;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->x(Lcom/xueqiu/android/community/WriteStatusActivity;)V

    .line 748
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$7;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->y(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$7;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 749
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$7;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->y(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/EditText;

    move-result-object v0

    const v1, 0x7f070126

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 750
    return-void
.end method
