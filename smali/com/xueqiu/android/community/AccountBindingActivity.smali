.class public Lcom/xueqiu/android/community/AccountBindingActivity;
.super Lcom/xueqiu/android/common/b;
.source "AccountBindingActivity.java"


# instance fields
.field private A:Landroid/view/View$OnClickListener;

.field private B:Landroid/view/View$OnClickListener;

.field private j:Landroid/content/SharedPreferences;

.field private k:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Lcom/xueqiu/android/base/b/ap;

.field private u:Lcom/xueqiu/android/base/b/m;

.field private v:Lcom/xueqiu/android/base/b/ao;

.field private w:I

.field private x:Landroid/view/View$OnClickListener;

.field private y:Landroid/view/View$OnClickListener;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 69
    iput-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->j:Landroid/content/SharedPreferences;

    .line 73
    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->k:I

    .line 74
    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->p:I

    .line 75
    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->q:I

    .line 76
    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->r:I

    .line 77
    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->s:I

    .line 79
    iput-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->t:Lcom/xueqiu/android/base/b/ap;

    .line 80
    iput-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->u:Lcom/xueqiu/android/base/b/m;

    .line 81
    iput-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->v:Lcom/xueqiu/android/base/b/ao;

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->w:I

    .line 125
    new-instance v0, Lcom/xueqiu/android/community/AccountBindingActivity$7;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$7;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->x:Landroid/view/View$OnClickListener;

    .line 148
    new-instance v0, Lcom/xueqiu/android/community/AccountBindingActivity$8;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$8;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->y:Landroid/view/View$OnClickListener;

    .line 184
    new-instance v0, Lcom/xueqiu/android/community/AccountBindingActivity$9;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$9;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->z:Landroid/view/View$OnClickListener;

    .line 218
    new-instance v0, Lcom/xueqiu/android/community/AccountBindingActivity$10;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$10;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->A:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/xueqiu/android/community/AccountBindingActivity$11;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$11;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->B:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a(Lcom/google/gson/JsonObject;)V
    .locals 11

    .prologue
    .line 415
    const v0, 0x7f0e00f0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 416
    const v1, 0x7f0e0108

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 417
    const v2, 0x7f0e010c

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 418
    const v3, 0x7f0e0110

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 419
    const v4, 0x7f0e0114

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 421
    const-string v5, "telephone"

    invoke-static {p1, v5}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 422
    const-string v5, "telephone"

    .line 3106
    const/4 v6, 0x0

    invoke-static {p1, v5, v6}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 422
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->r:I

    .line 425
    const v0, 0x7f0e0101

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 426
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 427
    const v0, 0x7f0e0104

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 435
    :goto_0
    const-string v0, "email"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 436
    const-string v0, "email"

    .line 4106
    const/4 v5, 0x0

    invoke-static {p1, v0, v5}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 437
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->k:I

    .line 442
    :goto_1
    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->r:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->k:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 443
    const v0, 0x7f0e0101

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 446
    :cond_0
    const/4 v6, 0x0

    .line 447
    const/4 v5, 0x0

    .line 448
    const/4 v3, 0x0

    .line 450
    const-string v0, "oauthbind"

    invoke-static {p1, v0}, Lcom/xueqiu/android/base/util/r;->a(Lcom/google/gson/JsonObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 451
    const-string v0, "oauthbind"

    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v7

    .line 453
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->size()I

    move-result v8

    if-ge v0, v8, :cond_9

    .line 454
    invoke-virtual {v7, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v8

    .line 455
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    .line 456
    const-string v10, "sina"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 457
    const/4 v6, 0x3

    invoke-virtual {v8, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v6

    .line 458
    if-eqz v6, :cond_4

    .line 459
    const/4 v6, 0x2

    invoke-virtual {v8, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    .line 460
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    const/4 v6, 0x1

    iput v6, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->p:I

    .line 466
    :goto_3
    const/4 v6, 0x1

    .line 453
    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 429
    :cond_2
    const-string v5, "\u672a\u7ed1\u5b9a"

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    const v0, 0x7f0e0104

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 431
    const v0, 0x7f0e0101

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 432
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->r:I

    goto/16 :goto_0

    .line 439
    :cond_3
    const-string v0, "\u672a\u7ed1\u5b9a"

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->k:I

    goto/16 :goto_1

    .line 463
    :cond_4
    const-string v6, "\u6388\u6743\u8fc7\u671f"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const/4 v6, 0x2

    iput v6, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->p:I

    goto :goto_3

    .line 467
    :cond_5
    const-string v10, "qq"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 468
    const/4 v5, 0x3

    invoke-virtual {v8, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v5

    .line 469
    if-eqz v5, :cond_6

    .line 470
    const/4 v5, 0x2

    invoke-virtual {v8, v5}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    .line 471
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 472
    const/4 v5, 0x1

    iput v5, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->q:I

    .line 477
    :goto_5
    const/4 v5, 0x1

    .line 478
    goto :goto_4

    .line 474
    :cond_6
    const-string v5, "\u6388\u6743\u8fc7\u671f"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    const/4 v5, 0x2

    iput v5, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->q:I

    goto :goto_5

    .line 478
    :cond_7
    const-string v10, "wc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 479
    const/4 v3, 0x3

    invoke-virtual {v8, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v3

    .line 480
    if-eqz v3, :cond_8

    .line 481
    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    .line 482
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    const/4 v3, 0x1

    iput v3, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->s:I

    .line 488
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 485
    :cond_8
    const-string v3, "\u6388\u6743\u8fc7\u671f"

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    const/4 v3, 0x2

    iput v3, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->s:I

    goto :goto_6

    .line 496
    :cond_9
    if-nez v6, :cond_a

    .line 497
    const-string v0, "\u672a\u7ed1\u5b9a"

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->p:I

    .line 500
    :cond_a
    if-nez v5, :cond_b

    .line 501
    const-string v0, "\u672a\u7ed1\u5b9a"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->q:I

    .line 505
    :cond_b
    if-nez v3, :cond_c

    .line 506
    const-string v0, "\u672a\u7ed1\u5b9a"

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->s:I

    .line 509
    :cond_c
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/AccountBindingActivity;)V
    .locals 7

    .prologue
    const/4 v3, -0x1

    .line 51
    .line 4512
    invoke-virtual {p0}, Lcom/xueqiu/android/community/AccountBindingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4515
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4516
    const-string v1, "\u8f93\u5165\u96ea\u7403\u767b\u5f55\u5bc6\u7801"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 4518
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4519
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4523
    invoke-virtual {p0}, Lcom/xueqiu/android/community/AccountBindingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 4524
    const v4, 0x7f08004a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7f08004c

    .line 4525
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const v6, 0x7f08004b

    .line 4526
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v6, 0x0

    .line 4524
    invoke-virtual {v2, v4, v5, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4528
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4530
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 4531
    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4532
    const/16 v2, 0x81

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 4533
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 4534
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 4536
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 4538
    new-instance v1, Lcom/xueqiu/android/community/AccountBindingActivity$4;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/community/AccountBindingActivity$4;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 4548
    const v1, 0x7f0700b1

    new-instance v2, Lcom/xueqiu/android/community/AccountBindingActivity$5;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/community/AccountBindingActivity$5;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4555
    const v1, 0x7f070070

    new-instance v2, Lcom/xueqiu/android/community/AccountBindingActivity$6;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$6;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4562
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/AccountBindingActivity;Lcom/google/gson/JsonObject;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/AccountBindingActivity;->a(Lcom/google/gson/JsonObject;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/AccountBindingActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    .line 5331
    invoke-virtual {p0}, Lcom/xueqiu/android/community/AccountBindingActivity;->h()Landroid/app/Dialog;

    .line 5332
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 5333
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 6202
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/b/an;->e(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 5338
    :goto_0
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/AccountBindingActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$2;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 51
    return-void

    .line 7180
    :cond_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 7198
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, p1, v0}, Lcom/xueqiu/android/base/b/an;->d(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/AccountBindingActivity;)Lcom/xueqiu/android/base/b/ap;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->t:Lcom/xueqiu/android/base/b/ap;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/AccountBindingActivity;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 7364
    .line 7368
    const-wide/16 v4, 0x0

    .line 7370
    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->w:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 7371
    const-string v2, "sina"

    .line 7372
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->t:Lcom/xueqiu/android/base/b/ap;

    .line 8126
    iget-object v6, v0, Lcom/xueqiu/android/base/b/ap;->b:Ljava/lang/String;

    .line 7373
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->t:Lcom/xueqiu/android/base/b/ap;

    .line 9122
    iget-object v3, v0, Lcom/xueqiu/android/base/b/ap;->c:Ljava/lang/String;

    .line 7374
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->t:Lcom/xueqiu/android/base/b/ap;

    .line 10118
    iget-wide v4, v0, Lcom/xueqiu/android/base/b/ap;->d:J

    .line 7375
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->t:Lcom/xueqiu/android/base/b/ap;

    .line 10130
    iget-object v7, v0, Lcom/xueqiu/android/base/b/ap;->e:Ljava/lang/String;

    .line 7391
    :goto_0
    new-instance v8, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v8}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 11180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 7392
    invoke-static {p1}, Lcom/xueqiu/android/base/util/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v0 .. v8}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 7393
    invoke-virtual {v8, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/AccountBindingActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$3;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 51
    return-void

    .line 7376
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7377
    const-string v2, "qq"

    .line 7378
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->u:Lcom/xueqiu/android/base/b/m;

    .line 10202
    iget-object v6, v0, Lcom/xueqiu/android/base/b/m;->c:Ljava/lang/String;

    .line 7379
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->u:Lcom/xueqiu/android/base/b/m;

    .line 10206
    iget-object v3, v0, Lcom/xueqiu/android/base/b/m;->d:Ljava/lang/String;

    .line 7380
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->u:Lcom/xueqiu/android/base/b/m;

    .line 10210
    iget-wide v4, v0, Lcom/xueqiu/android/base/b/m;->e:J

    .line 7381
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->u:Lcom/xueqiu/android/base/b/m;

    .line 10214
    iget-object v7, v0, Lcom/xueqiu/android/base/b/m;->f:Ljava/lang/String;

    goto :goto_0

    .line 7382
    :cond_1
    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->w:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 7383
    const-string v2, "wc"

    .line 7384
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->v:Lcom/xueqiu/android/base/b/ao;

    .line 11125
    iget-object v6, v0, Lcom/xueqiu/android/base/b/ao;->b:Ljava/lang/String;

    .line 7385
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->v:Lcom/xueqiu/android/base/b/ao;

    .line 11129
    iget-object v3, v0, Lcom/xueqiu/android/base/b/ao;->c:Ljava/lang/String;

    .line 7386
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->v:Lcom/xueqiu/android/base/b/ao;

    .line 11133
    iget-wide v4, v0, Lcom/xueqiu/android/base/b/ao;->d:J

    .line 7387
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->v:Lcom/xueqiu/android/base/b/ao;

    .line 11137
    iget-object v7, v0, Lcom/xueqiu/android/base/b/ao;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v3, v7

    move-object v6, v7

    move-object v2, v7

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/AccountBindingActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->r:I

    return v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/AccountBindingActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->p:I

    return v0
.end method

.method static synthetic e(Lcom/xueqiu/android/community/AccountBindingActivity;)I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->w:I

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/AccountBindingActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->q:I

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/AccountBindingActivity;)V
    .locals 2

    .prologue
    .line 51
    .line 7271
    const/4 v0, 0x2

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->w:I

    .line 7273
    new-instance v0, Lcom/xueqiu/android/base/b/m;

    new-instance v1, Lcom/xueqiu/android/community/AccountBindingActivity$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$12;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/base/b/m;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/base/b/h;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->u:Lcom/xueqiu/android/base/b/m;

    .line 7284
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->u:Lcom/xueqiu/android/base/b/m;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/m;->a()V

    .line 51
    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/community/AccountBindingActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->k:I

    return v0
.end method

.method static synthetic i(Lcom/xueqiu/android/community/AccountBindingActivity;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->s:I

    return v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/xueqiu/android/community/AccountBindingActivity;->h()Landroid/app/Dialog;

    .line 2180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 312
    new-instance v1, Lcom/xueqiu/android/community/AccountBindingActivity$14;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$14;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 328
    return-void
.end method

.method static synthetic j(Lcom/xueqiu/android/community/AccountBindingActivity;)V
    .locals 2

    .prologue
    .line 51
    .line 7288
    const/4 v0, 0x3

    iput v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->w:I

    .line 7290
    new-instance v0, Lcom/xueqiu/android/base/b/ao;

    new-instance v1, Lcom/xueqiu/android/community/AccountBindingActivity$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$13;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/base/b/ao;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/base/b/h;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->v:Lcom/xueqiu/android/base/b/ao;

    .line 7302
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->v:Lcom/xueqiu/android/base/b/ao;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/ao;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7303
    const v0, 0x7f07057a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 7304
    :goto_0
    return-void

    .line 7306
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->v:Lcom/xueqiu/android/base/b/ao;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/b/ao;->a()V

    goto :goto_0
.end method

.method static synthetic k(Lcom/xueqiu/android/community/AccountBindingActivity;)Lcom/xueqiu/android/base/b/m;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->u:Lcom/xueqiu/android/base/b/m;

    return-object v0
.end method

.method static synthetic l(Lcom/xueqiu/android/community/AccountBindingActivity;)Lcom/xueqiu/android/base/b/ao;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->v:Lcom/xueqiu/android/base/b/ao;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/community/AccountBindingActivity;)Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->j:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/community/AccountBindingActivity;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/xueqiu/android/community/AccountBindingActivity;->j()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 567
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 568
    iget v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->w:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->u:Lcom/xueqiu/android/base/b/m;

    .line 4181
    iget-object v0, v0, Lcom/xueqiu/android/base/b/m;->b:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/tauth/Tencent;->onActivityResult(IILandroid/content/Intent;)Z

    .line 575
    :goto_0
    return-void

    .line 570
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 571
    invoke-direct {p0}, Lcom/xueqiu/android/community/AccountBindingActivity;->j()V

    goto :goto_0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->t:Lcom/xueqiu/android/base/b/ap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/base/b/ap;->a(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 88
    const v0, 0x7f0a0058

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->setTheme(I)V

    .line 90
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f030024

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->setContentView(I)V

    .line 2111
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->j:Landroid/content/SharedPreferences;

    .line 2112
    iget-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->j:Landroid/content/SharedPreferences;

    const-string v1, "bound_info"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2113
    if-eqz v0, :cond_0

    .line 2114
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->a(Lcom/google/gson/JsonObject;)V

    .line 2116
    :cond_0
    invoke-direct {p0}, Lcom/xueqiu/android/community/AccountBindingActivity;->j()V

    .line 2118
    const v0, 0x7f0e0101

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2119
    const v0, 0x7f0e0105

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2120
    const v0, 0x7f0e0109

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->z:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2121
    const v0, 0x7f0e010d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2122
    const v0, 0x7f0e0111

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/AccountBindingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v0, Lcom/xueqiu/android/base/b/ap;

    new-instance v1, Lcom/xueqiu/android/community/AccountBindingActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/AccountBindingActivity$1;-><init>(Lcom/xueqiu/android/community/AccountBindingActivity;)V

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/base/b/ap;-><init>(Landroid/app/Activity;Lcom/xueqiu/android/base/b/h;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/AccountBindingActivity;->t:Lcom/xueqiu/android/base/b/ap;

    .line 107
    return-void
.end method
