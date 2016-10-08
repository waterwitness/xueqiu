.class final Lcom/xueqiu/android/common/account/LoginActivity$28;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/common/account/LoginActivity;->b(Z)V
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:I

.field final synthetic h:I

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:I

.field final synthetic n:Lcom/xueqiu/android/common/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/account/LoginActivity;ZIIIIIIIIIIII)V
    .locals 0

    .prologue
    .line 1078
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->n:Lcom/xueqiu/android/common/account/LoginActivity;

    iput-boolean p2, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->a:Z

    iput p3, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->b:I

    iput p4, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->c:I

    iput p5, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->d:I

    iput p6, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->e:I

    iput p7, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->f:I

    iput p8, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->g:I

    iput p9, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->h:I

    iput p10, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->i:I

    iput p11, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->j:I

    iput p12, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->k:I

    iput p13, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->l:I

    iput p14, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1081
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1082
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->n:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1083
    iget-boolean v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->a:Z

    if-eqz v2, :cond_0

    .line 1084
    iget v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->b:I

    iget v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->c:I

    invoke-static {v2, v3, v1, v7}, Lcom/xueqiu/android/common/account/LoginActivity;->a(IIIZ)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1088
    :goto_0
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->n:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1090
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->n:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->s(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1091
    iget-boolean v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->a:Z

    if-eqz v2, :cond_1

    .line 1092
    iget v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->e:I

    iget v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->f:I

    invoke-static {v2, v3, v1, v7}, Lcom/xueqiu/android/common/account/LoginActivity;->a(IIIZ)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1093
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->g:I

    iget v4, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->h:I

    .line 1094
    invoke-static {v3, v4, v1, v7}, Lcom/xueqiu/android/common/account/LoginActivity;->a(IIIZ)I

    move-result v3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1093
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 1100
    :goto_1
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->n:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v2}, Lcom/xueqiu/android/common/account/LoginActivity;->s(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->n:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v0}, Lcom/xueqiu/android/common/account/LoginActivity;->t(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1103
    iget-boolean v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->a:Z

    if-eqz v2, :cond_2

    .line 1104
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->k:I

    iget v4, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->l:I

    .line 1105
    invoke-static {v3, v4, v1, v7}, Lcom/xueqiu/android/common/account/LoginActivity;->a(IIIZ)I

    move-result v1

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1104
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1110
    :goto_2
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->n:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v1}, Lcom/xueqiu/android/common/account/LoginActivity;->t(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1111
    return-void

    .line 1086
    :cond_0
    iget v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->d:I

    iget v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->c:I

    invoke-static {v2, v3, v1, v6}, Lcom/xueqiu/android/common/account/LoginActivity;->a(IIIZ)I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 1096
    :cond_1
    iget v2, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->i:I

    iget v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->f:I

    invoke-static {v2, v3, v1, v6}, Lcom/xueqiu/android/common/account/LoginActivity;->a(IIIZ)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1097
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->j:I

    iget v4, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->h:I

    .line 1098
    invoke-static {v3, v4, v1, v6}, Lcom/xueqiu/android/common/account/LoginActivity;->a(IIIZ)I

    move-result v3

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1097
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 1107
    :cond_2
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v3, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->m:I

    iget v4, p0, Lcom/xueqiu/android/common/account/LoginActivity$28;->l:I

    .line 1108
    invoke-static {v3, v4, v1, v6}, Lcom/xueqiu/android/common/account/LoginActivity;->a(IIIZ)I

    move-result v1

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1107
    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_2
.end method
