.class public final Lcom/xueqiu/android/message/a/i;
.super Ljava/lang/Object;
.source "ChatAdapter.java"


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field f:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Landroid/view/View;)Lcom/xueqiu/android/message/a/i;
    .locals 4

    .prologue
    .line 574
    new-instance v1, Lcom/xueqiu/android/message/a/i;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/i;-><init>()V

    .line 576
    const v0, 0x7f0e00a1

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/i;->a:Landroid/widget/TextView;

    .line 577
    const v0, 0x7f0e009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/i;->b:Landroid/widget/ImageView;

    .line 578
    const v0, 0x7f0e055a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/i;->c:Landroid/widget/TextView;

    .line 579
    const v0, 0x7f0e02f0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/i;->d:Landroid/widget/TextView;

    .line 580
    const v0, 0x7f0e01fb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/message/a/i;->e:Landroid/view/View;

    .line 581
    const v0, 0x7f0e055b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/message/a/i;->f:Landroid/view/View;

    .line 582
    iget-object v0, v1, Lcom/xueqiu/android/message/a/i;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 583
    const/high16 v0, 0x41d00000    # 26.0f

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    .line 584
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    sub-int v0, v2, v0

    .line 585
    int-to-float v2, v0

    const/high16 v3, 0x438c0000    # 280.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x44070000    # 540.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 586
    iget-object v3, v1, Lcom/xueqiu/android/message/a/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 587
    iget-object v0, v1, Lcom/xueqiu/android/message/a/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    :cond_0
    :goto_0
    return-object v1

    .line 590
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/message/model/Message;Lcom/xueqiu/android/message/ChatActivity;)V
    .locals 4

    .prologue
    .line 597
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/xueqiu/android/message/a/i;->a:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/xueqiu/android/message/a/i;->a:Landroid/widget/TextView;

    const-string v2, "title"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/message/a/i;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/xueqiu/android/message/a/i;->d:Landroid/widget/TextView;

    const-string v2, "text"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/message/a/i;->c:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 605
    iget-object v1, p0, Lcom/xueqiu/android/message/a/i;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/message/model/Message;->getCreatedAt()Ljava/util/Date;

    move-result-object v2

    const-string v3, "MM-dd HH:mm"

    invoke-static {v2, v3}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/message/a/i;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 2955
    iget-object v1, p2, Lcom/xueqiu/android/message/ChatActivity;->s:Lcom/d/a/b/f;

    .line 608
    const-string v2, "image"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/message/a/i;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 610
    :cond_3
    const-string v1, "url"

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/model/parser/JSONUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 611
    iget-object v0, p0, Lcom/xueqiu/android/message/a/i;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/xueqiu/android/message/a/i;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    :goto_0
    return-void

    .line 614
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/message/a/i;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/xueqiu/android/message/a/i;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 618
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
