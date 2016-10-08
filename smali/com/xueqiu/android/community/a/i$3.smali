.class final Lcom/xueqiu/android/community/a/i$3;
.super Ljava/lang/Object;
.source "PaidCommentListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/a/i;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/i;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/i;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/xueqiu/android/community/a/i$3;->a:Lcom/xueqiu/android/community/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/xueqiu/android/community/a/i$3;->a:Lcom/xueqiu/android/community/a/i;

    .line 1089
    iget-object v2, v2, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 135
    const-class v3, Lcom/xueqiu/android/common/ImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    const-string v2, ".jpg!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, ".jpeg!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, ".png!"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 137
    :cond_0
    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_1
    const-string v2, "url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    iget-object v0, p0, Lcom/xueqiu/android/community/a/i$3;->a:Lcom/xueqiu/android/community/a/i;

    .line 2089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 140
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 141
    iget-object v0, p0, Lcom/xueqiu/android/community/a/i$3;->a:Lcom/xueqiu/android/community/a/i;

    .line 3089
    iget-object v0, v0, Lcom/xueqiu/android/common/a/d;->c:Landroid/content/Context;

    .line 141
    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f040007

    const v2, 0x7f040008

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 142
    return-void
.end method
