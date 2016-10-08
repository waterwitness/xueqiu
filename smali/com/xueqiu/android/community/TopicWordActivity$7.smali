.class final Lcom/xueqiu/android/community/TopicWordActivity$7;
.super Ljava/lang/Object;
.source "TopicWordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/TopicWordActivity;->b(Z)Landroid/widget/LinearLayout;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicWordActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicWordActivity;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicWordActivity$7;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$7;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    const-string v1, "time"

    iput-object v1, v0, Lcom/xueqiu/android/community/TopicWordActivity;->x:Ljava/lang/String;

    .line 356
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$7;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicWordActivity;->b(Lcom/xueqiu/android/community/TopicWordActivity;)V

    .line 358
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$7;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/xueqiu/android/community/TopicWordActivity;->a(Landroid/widget/LinearLayout;Z)V

    .line 360
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$7;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/xueqiu/android/community/TopicWordActivity;->a(Landroid/widget/LinearLayout;Z)V

    .line 363
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$7;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v2}, Lcom/xueqiu/android/community/TopicWordActivity;->a(Landroid/widget/LinearLayout;Z)V

    .line 365
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$7;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, v3}, Lcom/xueqiu/android/community/TopicWordActivity;->a(Landroid/widget/LinearLayout;Z)V

    .line 366
    return-void
.end method
