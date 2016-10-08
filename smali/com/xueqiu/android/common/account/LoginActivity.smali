.class public Lcom/xueqiu/android/common/account/LoginActivity;
.super Lcom/xueqiu/android/common/b;
.source "LoginActivity.java"


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/view/View;

.field private E:Landroid/widget/TextView;

.field private F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

.field private G:Landroid/widget/EditText;

.field private H:Landroid/view/View;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/EditText;

.field private K:Landroid/widget/EditText;

.field private L:Landroid/widget/EditText;

.field private M:Landroid/view/View;

.field private N:Landroid/view/View;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/RelativeLayout;

.field private R:Landroid/view/View;

.field private S:Landroid/view/View;

.field private T:Landroid/view/View;

.field private U:Landroid/view/View;

.field private V:Landroid/view/View;

.field private W:Ljava/lang/String;

.field private X:Lcom/xueqiu/android/common/account/a;

.field private Y:Lcom/xueqiu/android/common/account/b;

.field private Z:Lcom/xueqiu/android/common/account/c;

.field private aa:Z

.field private ab:Landroid/content/Context;

.field private ac:Landroid/widget/LinearLayout;

.field private ad:Landroid/widget/LinearLayout;

.field private ae:Ljava/lang/String;

.field private af:Landroid/text/TextWatcher;

.field private ag:Landroid/text/TextWatcher;

.field private ah:Landroid/text/TextWatcher;

.field j:Landroid/widget/TextView;

.field k:Landroid/widget/EditText;

.field p:Landroid/os/Handler;

.field q:I

.field r:Landroid/os/Handler;

.field s:Z

.field t:Z

.field private u:B

.field private v:Landroid/view/View;

.field private w:Landroid/widget/FrameLayout;

.field private x:Landroid/widget/ImageView;

.field private y:Landroid/view/View;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 89
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->u:B

    .line 135
    iput-boolean v2, p0, Lcom/xueqiu/android/common/account/LoginActivity;->aa:Z

    .line 141
    iput-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ae:Ljava/lang/String;

    .line 381
    iput-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->p:Landroid/os/Handler;

    .line 382
    iput v2, p0, Lcom/xueqiu/android/common/account/LoginActivity;->q:I

    .line 560
    new-instance v0, Lcom/xueqiu/android/common/account/LoginActivity$15;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/LoginActivity$15;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->af:Landroid/text/TextWatcher;

    .line 593
    new-instance v0, Lcom/xueqiu/android/common/account/LoginActivity$16;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/LoginActivity$16;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ag:Landroid/text/TextWatcher;

    .line 620
    new-instance v0, Lcom/xueqiu/android/common/account/LoginActivity$17;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/LoginActivity$17;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ah:Landroid/text/TextWatcher;

    .line 990
    new-instance v0, Lcom/xueqiu/android/common/account/LoginActivity$25;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/account/LoginActivity$25;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->r:Landroid/os/Handler;

    .line 1125
    iput-boolean v2, p0, Lcom/xueqiu/android/common/account/LoginActivity;->s:Z

    .line 1126
    iput-boolean v2, p0, Lcom/xueqiu/android/common/account/LoginActivity;->t:Z

    return-void
.end method

.method static synthetic a(IIIZ)I
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 72
    .line 22118
    if-eqz p3, :cond_0

    .line 22119
    int-to-float v0, p0

    mul-int v1, p2, p1

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    .line 22121
    :cond_0
    int-to-float v0, p0

    mul-int v1, p2, p1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 72
    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ab:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->W:Ljava/lang/String;

    return-object p1
.end method

.method private a(B)V
    .locals 8

    .prologue
    const v7, 0x7f070219

    const v6, 0x7f070218

    const/16 v5, 0x81

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 748
    packed-switch p1, :pswitch_data_0

    .line 761
    :goto_0
    iput-byte p1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->u:B

    .line 762
    return-void

    .line 5658
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5659
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ac:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5660
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 5661
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 5662
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5663
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->K:Landroid/widget/EditText;

    const v1, 0x7f07021e

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5664
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->K:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 5665
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->K:Landroid/widget/EditText;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 5666
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->K:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5667
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->L:Landroid/widget/EditText;

    const v1, 0x7f07021d

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5668
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->L:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5669
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->L:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 5670
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->L:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->af:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5671
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ag:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 5673
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->M:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 5674
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    const v1, 0x7f0702e7

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5675
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$18;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$18;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5696
    invoke-direct {p0, v3}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Z)V

    .line 5697
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->R:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6438
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->T:Landroid/view/View;

    .line 6439
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6440
    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$6;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6448
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->U:Landroid/view/View;

    .line 6449
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6450
    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$7;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6459
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->V:Landroid/view/View;

    .line 6460
    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$8;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 6702
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6703
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ac:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6704
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6705
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6706
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6707
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 6708
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 6709
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    const v1, 0x7f07021a

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 6710
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 6711
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ag:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6712
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ah:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6713
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6715
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->M:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 6716
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->O:Landroid/widget/TextView;

    const v1, 0x7f070217

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6717
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->O:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$19;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$19;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6723
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6724
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$20;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$20;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6742
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->R:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 6743
    invoke-direct {p0, v3}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Z)V

    .line 6744
    invoke-direct {p0}, Lcom/xueqiu/android/common/account/LoginActivity;->k()V

    goto/16 :goto_0

    .line 7506
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ad:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7507
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ac:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7508
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7509
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->B:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7510
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7511
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 7512
    const-string v1, "user_account"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 7513
    if-nez v1, :cond_0

    .line 7514
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->setText(Ljava/lang/CharSequence;)V

    .line 7515
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 7520
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    const v1, 0x7f07021a

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 7521
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 7522
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 7523
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ah:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7524
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->M:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 7525
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->O:Landroid/widget/TextView;

    const v1, 0x7f07021c

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7526
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->O:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$13;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$13;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7532
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7533
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$14;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7555
    invoke-direct {p0}, Lcom/xueqiu/android/common/account/LoginActivity;->k()V

    .line 7556
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->R:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 7557
    invoke-direct {p0, v3}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Z)V

    goto/16 :goto_0

    .line 7517
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    invoke-static {v6}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 7518
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 748
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/LoginActivity;B)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/account/LoginActivity;->a(B)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/LoginActivity;III)V
    .locals 5

    .prologue
    .line 22012
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    iget-object v4, p0, Lcom/xueqiu/android/common/account/LoginActivity;->y:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 22013
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 22014
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 22015
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 22016
    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$26;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$26;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 22035
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->y:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/LoginActivity;Lcom/xueqiu/android/common/model/LoginResult;)V
    .locals 8

    .prologue
    .line 72
    .line 17863
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ab:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 17867
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 17868
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getExpiresIn()J

    move-result-wide v2

    .line 17869
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 17870
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    .line 17872
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 17873
    iget-object v6, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    invoke-virtual {v6}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 18197
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    .line 17874
    if-nez v7, :cond_0

    .line 17875
    const-string v7, "user_account"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17877
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17879
    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x3c

    mul-long/2addr v2, v6

    .line 17880
    new-instance v0, Lcom/xueqiu/android/community/model/UserLogonData;

    invoke-direct {v0}, Lcom/xueqiu/android/community/model/UserLogonData;-><init>()V

    .line 17881
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setAccessToken(Ljava/lang/String;)V

    .line 17882
    invoke-virtual {v0, v4}, Lcom/xueqiu/android/community/model/UserLogonData;->setRefreshToken(Ljava/lang/String;)V

    .line 17883
    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setExpiresInByInMillis(J)V

    .line 17884
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setGetTokenTime(J)V

    .line 17885
    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/community/model/UserLogonData;->setUserId(J)V

    .line 17886
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setAnonymousUser(Z)V

    .line 17888
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getUserState()J

    move-result-wide v2

    const-wide/32 v6, 0x1adb2

    cmp-long v1, v2, v6

    if-nez v1, :cond_1

    .line 17889
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setSpamUser(Z)V

    .line 17890
    invoke-virtual {p1}, Lcom/xueqiu/android/common/model/LoginResult;->getTelephoneBinded()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/UserLogonData;->setTelephone(Ljava/lang/String;)V

    .line 19069
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 17892
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/t;->a(Lcom/xueqiu/android/community/model/UserLogonData;)V

    .line 17894
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/xueqiu/android/base/storage/DBManager;->insertUser(Lcom/xueqiu/android/community/model/User;)Z

    .line 20069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 17896
    invoke-virtual {v0}, Lcom/xueqiu/android/base/t;->a()V

    .line 21069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 17897
    invoke-static {p0}, Lcom/xueqiu/android/base/t;->a(Landroid/content/Context;)V

    .line 17899
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ab:Landroid/content/Context;

    const-class v2, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17900
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17901
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginActivity;->startActivity(Landroid/content/Intent;)V

    .line 17902
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/LoginActivity;->finish()V

    .line 72
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/account/LoginActivity;Z)V
    .locals 2

    .prologue
    .line 72
    .line 17589
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 17590
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->j:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v0, 0x7f0d0114

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    return-void

    .line 17590
    :cond_0
    const v0, 0x7f0d0110

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/widget/EmailAutoTextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/LoginActivity;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 72
    .line 14360
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ae:Ljava/lang/String;

    .line 15197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 14360
    if-nez v0, :cond_0

    .line 16180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 14363
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ae:Ljava/lang/String;

    new-instance v2, Lcom/xueqiu/android/common/account/LoginActivity$4;

    invoke-direct {v2, p0, p0}, Lcom/xueqiu/android/common/account/LoginActivity$4;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/xueqiu/android/base/b/ai;->e(Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 72
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/common/account/LoginActivity;Z)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/xueqiu/android/common/account/LoginActivity;->c(Z)V

    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->w:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/common/account/LoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ae:Ljava/lang/String;

    return-object p1
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 642
    if-nez p1, :cond_0

    .line 643
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 646
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    const/16 v1, 0x4c

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->j(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 654
    :goto_0
    return-void

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 652
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    const/16 v1, 0xff

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->j(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->I:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->L:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/account/LoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->W:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/b;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->Y:Lcom/xueqiu/android/common/account/b;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->J:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->K:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/common/account/LoginActivity;)I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->q:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->q:I

    return v0
.end method

.method static synthetic k(Lcom/xueqiu/android/common/account/LoginActivity;)I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->q:I

    return v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->T:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$9;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->U:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$10;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$10;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 493
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->V:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$11;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    return-void
.end method

.method static synthetic l(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->p:Landroid/os/Handler;

    return-object v0
.end method

.method private l()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1165
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$31;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$31;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v2, v2, v2, v1}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 1183
    return-void
.end method

.method static synthetic m(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic n(Lcom/xueqiu/android/common/account/LoginActivity;)Lcom/xueqiu/android/common/account/c;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->Z:Lcom/xueqiu/android/common/account/c;

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 5

    .prologue
    .line 72
    .line 16809
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16810
    const v0, 0x7f070131

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 16812
    :goto_0
    return-void

    .line 16811
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16812
    const v0, 0x7f070259

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 16814
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v0

    .line 16815
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 16816
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 16817
    const v3, 0x7f070216

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/common/account/LoginActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 16818
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/common/account/LoginActivity$21;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/common/account/LoginActivity$21;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/xueqiu/android/base/b/ai;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0
.end method

.method static synthetic p(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 7

    .prologue
    .line 72
    .line 16836
    const v0, 0x7f070216

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 16837
    invoke-static {}, Lcom/xueqiu/android/base/util/i;->b()Ljava/lang/String;

    move-result-object v4

    .line 16838
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 16839
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16840
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 16842
    const v2, 0x7f0700c4

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 16843
    iget-byte v5, p0, Lcom/xueqiu/android/common/account/LoginActivity;->u:B

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 16844
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 16846
    :cond_0
    new-instance v5, Lcom/xueqiu/android/common/account/LoginActivity$22;

    invoke-direct {v5, p0, p0}, Lcom/xueqiu/android/common/account/LoginActivity$22;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual/range {v0 .. v5}, Lcom/xueqiu/android/base/b/ai;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 72
    return-void
.end method

.method static synthetic q(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic r(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->y:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->x:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic t(Lcom/xueqiu/android/common/account/LoginActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic u(Lcom/xueqiu/android/common/account/LoginActivity;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/xueqiu/android/common/account/LoginActivity;->l()V

    return-void
.end method

.method static synthetic v(Lcom/xueqiu/android/common/account/LoginActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ae:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b(Z)V
    .locals 18

    .prologue
    .line 1040
    const v2, 0x7f080007

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v5

    .line 1041
    const v2, 0x7f080006

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v7

    .line 1042
    sub-int v6, v5, v7

    .line 1044
    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v8, v2

    .line 1045
    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v12, v2

    .line 1046
    sub-int v9, v8, v12

    .line 1048
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v10, v2

    .line 1049
    const/high16 v2, 0x41f00000    # 30.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v13, v2

    .line 1050
    sub-int v11, v10, v13

    .line 1052
    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v14, v2

    .line 1053
    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v2}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v2

    float-to-int v0, v2

    move/from16 v16, v0

    .line 1054
    sub-int v15, v14, v16

    .line 1056
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v17

    .line 1057
    new-instance v2, Lcom/xueqiu/android/common/account/LoginActivity$27;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/xueqiu/android/common/account/LoginActivity$27;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1078
    new-instance v2, Lcom/xueqiu/android/common/account/LoginActivity$28;

    move-object/from16 v3, p0

    move/from16 v4, p1

    invoke-direct/range {v2 .. v16}, Lcom/xueqiu/android/common/account/LoginActivity$28;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;ZIIIIIIIIIIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1113
    const-wide/16 v2, 0x12c

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1114
    invoke-virtual/range {v17 .. v17}, Landroid/animation/ValueAnimator;->start()V

    .line 1115
    return-void

    .line 1056
    nop

    :array_0
    .array-data 4
        0x0
        0x64
    .end array-data
.end method

.method public final j()V
    .locals 8

    .prologue
    .line 907
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->W:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 908
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->L:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->W:Ljava/lang/String;

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 911
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->W:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 912
    const v0, 0x7f070274

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 951
    :cond_1
    :goto_0
    return-void

    .line 915
    :cond_2
    const-string v0, "86"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->W:Ljava/lang/String;

    .line 11197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 915
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->W:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xb

    if-eq v0, v2, :cond_3

    .line 916
    const v0, 0x7f070275

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 921
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->J:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 922
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->K:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 923
    invoke-static {v3}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 924
    const v0, 0x7f070259

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 925
    :cond_4
    invoke-static {v5}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 926
    const v0, 0x7f070247

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 927
    :cond_5
    invoke-static {v5}, Lcom/xueqiu/android/base/b/a/c;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {v5}, Lcom/xueqiu/android/base/util/bc;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 928
    :cond_6
    const v0, 0x7f07020a

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 12018
    :cond_7
    const-string v0, "(?=^.{8,16}$)(?=.*\\d)(?=.*[a-zA-Z]).*$"

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 929
    if-nez v0, :cond_8

    .line 930
    const v0, 0x7f0703d2

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto/16 :goto_0

    .line 932
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ae:Ljava/lang/String;

    .line 12197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 932
    if-nez v0, :cond_1

    .line 935
    const v0, 0x7f070361

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginActivity;->c_(Ljava/lang/String;)Landroid/app/Dialog;

    .line 13180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 936
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity;->W:Ljava/lang/String;

    iget-object v4, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ae:Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Lcom/xueqiu/android/common/account/LoginActivity$24;

    invoke-direct {v7, p0, p0}, Lcom/xueqiu/android/common/account/LoginActivity$24;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual/range {v0 .. v7}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 779
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 780
    const/16 v0, 0x63

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 781
    const-string v0, "extra_country_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 785
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->I:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->Z:Lcom/xueqiu/android/common/account/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xueqiu/android/common/account/c;->a(IILandroid/content/Intent;)V

    .line 796
    return-void

    .line 786
    :cond_1
    const/16 v0, 0x62

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 787
    const-string v0, "extra_country_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->E:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 791
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->E:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v3, 0x7f0e00e2

    const/4 v4, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 146
    iput-object p0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ab:Landroid/content/Context;

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 148
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 149
    if-nez v0, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/LoginActivity;->finish()V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    const-string v1, "extra_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getByte(Ljava/lang/String;B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    iput-byte v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->u:B

    .line 154
    const-string v1, "extra_need_back"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->aa:Z

    .line 156
    new-instance v0, Lcom/xueqiu/android/common/account/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/account/a;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->X:Lcom/xueqiu/android/common/account/a;

    .line 157
    new-instance v0, Lcom/xueqiu/android/common/account/b;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/b;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->Y:Lcom/xueqiu/android/common/account/b;

    .line 158
    new-instance v0, Lcom/xueqiu/android/common/account/c;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/account/c;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->Z:Lcom/xueqiu/android/common/account/c;

    .line 2267
    iput-boolean v4, p0, Lcom/xueqiu/android/common/b;->m:Z

    .line 3172
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ab:Landroid/content/Context;

    const v1, 0x7f03001c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    .line 3174
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ac:Landroid/widget/LinearLayout;

    .line 3175
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ad:Landroid/widget/LinearLayout;

    .line 3177
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->Q:Landroid/widget/RelativeLayout;

    .line 3178
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->w:Landroid/widget/FrameLayout;

    .line 3179
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->x:Landroid/widget/ImageView;

    .line 3180
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->y:Landroid/view/View;

    .line 3181
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->z:Landroid/view/View;

    .line 3182
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->A:Landroid/view/View;

    .line 3183
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->B:Landroid/view/View;

    .line 3184
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->C:Landroid/view/View;

    .line 3187
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->D:Landroid/view/View;

    .line 3188
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->E:Landroid/widget/TextView;

    .line 3189
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    .line 3190
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->G:Landroid/widget/EditText;

    .line 3193
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->H:Landroid/view/View;

    .line 3194
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->I:Landroid/widget/TextView;

    .line 3195
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->j:Landroid/widget/TextView;

    .line 3196
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->J:Landroid/widget/EditText;

    .line 3197
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->K:Landroid/widget/EditText;

    .line 3198
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->L:Landroid/widget/EditText;

    .line 3199
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->k:Landroid/widget/EditText;

    .line 3200
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->j:Landroid/widget/TextView;

    .line 3203
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->M:Landroid/view/View;

    .line 3204
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00bf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->N:Landroid/view/View;

    .line 3205
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->O:Landroid/widget/TextView;

    .line 3206
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->P:Landroid/widget/TextView;

    .line 3207
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->R:Landroid/view/View;

    .line 3208
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->S:Landroid/view/View;

    .line 3209
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->T:Landroid/view/View;

    .line 3210
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->U:Landroid/view/View;

    .line 3211
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    const v1, 0x7f0e00d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->V:Landroid/view/View;

    .line 3213
    const v0, 0x7f0700c4

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 3215
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 3216
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->I:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3221
    iget-boolean v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->aa:Z

    if-eqz v0, :cond_2

    .line 3222
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->Q:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3223
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->Q:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$1;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3230
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->z:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$12;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3238
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->A:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$23;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$23;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3245
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->N:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$32;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$32;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3256
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->F:Lcom/xueqiu/android/common/widget/EmailAutoTextView;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$33;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$33;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/EmailAutoTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3275
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->H:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$34;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$34;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3284
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->D:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$35;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$35;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3293
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$36;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$36;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3328
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->J:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$37;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$37;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3338
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->K:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$2;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 3347
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->S:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$3;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-byte v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->u:B

    invoke-direct {p0, v0}, Lcom/xueqiu/android/common/account/LoginActivity;->a(B)V

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->v:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/account/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 4129
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4130
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/account/LoginActivity$29;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/common/account/LoginActivity$29;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4153
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->w:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/xueqiu/android/common/account/LoginActivity$30;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/account/LoginActivity$30;-><init>(Lcom/xueqiu/android/common/account/LoginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 5182
    iget-object v0, v0, Lcom/xueqiu/android/base/t;->a:Ljava/lang/String;

    .line 165
    iput-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ae:Ljava/lang/String;

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->ae:Ljava/lang/String;

    .line 5197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0}, Lcom/xueqiu/android/common/account/LoginActivity;->l()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->Z:Lcom/xueqiu/android/common/account/c;

    .line 8372
    iget-object v1, v0, Lcom/xueqiu/android/common/account/c;->b:Lcom/xueqiu/android/common/account/f;

    if-eqz v1, :cond_0

    .line 8373
    iget-object v1, v0, Lcom/xueqiu/android/common/account/c;->b:Lcom/xueqiu/android/common/account/f;

    .line 8508
    iget-object v2, v0, Lcom/xueqiu/android/common/account/c;->k:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-virtual {v2, v1}, Lcom/xueqiu/android/common/account/LoginActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8375
    :cond_0
    iget-object v1, v0, Lcom/xueqiu/android/common/account/c;->l:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 9476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 8376
    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v2, v0, Lcom/xueqiu/android/common/account/c;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 8377
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/xueqiu/android/common/account/c;->l:Landroid/content/BroadcastReceiver;

    .line 8379
    :cond_1
    iget-object v1, v0, Lcom/xueqiu/android/common/account/c;->j:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 10476
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    .line 8380
    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v0, v0, Lcom/xueqiu/android/common/account/c;->j:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 801
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->X:Lcom/xueqiu/android/common/account/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/a;->b()V

    .line 802
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->Y:Lcom/xueqiu/android/common/account/b;

    .line 11133
    iget-object v1, v0, Lcom/xueqiu/android/common/account/b;->a:Lcom/xueqiu/android/common/account/LoginActivity;

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    iget-object v0, v0, Lcom/xueqiu/android/common/account/b;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/BroadcastReceiver;)V

    .line 803
    invoke-virtual {p0}, Lcom/xueqiu/android/common/account/LoginActivity;->finish()V

    .line 804
    const v0, 0x7f040007

    const v1, 0x7f040008

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/account/LoginActivity;->overridePendingTransition(II)V

    .line 805
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 806
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5

    .prologue
    .line 955
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onNewIntent(Landroid/content/Intent;)V

    .line 956
    if-eqz p1, :cond_1

    .line 957
    const-string v0, "extra_phone_number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    const-string v1, "extra_area_code"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 959
    if-nez v2, :cond_0

    .line 960
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity;->I:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    iget-object v2, p0, Lcom/xueqiu/android/common/account/LoginActivity;->I:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 14197
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 963
    if-nez v1, :cond_1

    .line 964
    iget-object v1, p0, Lcom/xueqiu/android/common/account/LoginActivity;->L:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 967
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 979
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onWindowFocusChanged(Z)V

    .line 980
    if-eqz p1, :cond_0

    .line 981
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->r:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 986
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Lcom/xueqiu/android/common/account/LoginActivity;->r:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method
