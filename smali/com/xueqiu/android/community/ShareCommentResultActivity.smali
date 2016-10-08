.class public Lcom/xueqiu/android/community/ShareCommentResultActivity;
.super Landroid/app/Activity;
.source "ShareCommentResultActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/xueqiu/android/community/ShareCommentResultActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xueqiu/android/community/ShareCommentResultActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 46
    :pswitch_0
    const-string v0, "http://xueqiu.com/wallet/balance"

    invoke-static {v0, p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 53
    :pswitch_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/ShareCommentResultActivity;->finish()V

    .line 54
    invoke-virtual {p0, v1, v1}, Lcom/xueqiu/android/community/ShareCommentResultActivity;->overridePendingTransition(II)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0132
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ShareCommentResultActivity;->setContentView(I)V

    .line 1033
    const v0, 0x7f0e0132

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ShareCommentResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/ShareCommentResultActivity;->d:Landroid/widget/RelativeLayout;

    .line 1034
    iget-object v0, p0, Lcom/xueqiu/android/community/ShareCommentResultActivity;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1035
    const v0, 0x7f0e0133

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ShareCommentResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/ShareCommentResultActivity;->b:Landroid/widget/ImageView;

    .line 1036
    iget-object v0, p0, Lcom/xueqiu/android/community/ShareCommentResultActivity;->b:Landroid/widget/ImageView;

    const v1, 0x7f0203ca

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->h(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1037
    iget-object v0, p0, Lcom/xueqiu/android/community/ShareCommentResultActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    const v0, 0x7f0e0134

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/ShareCommentResultActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xueqiu/android/community/ShareCommentResultActivity;->c:Landroid/widget/ImageButton;

    .line 1039
    iget-object v0, p0, Lcom/xueqiu/android/community/ShareCommentResultActivity;->c:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method
