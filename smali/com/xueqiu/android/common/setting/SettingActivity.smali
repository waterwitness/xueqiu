.class public Lcom/xueqiu/android/common/setting/SettingActivity;
.super Lcom/xueqiu/android/common/b;
.source "SettingActivity.java"


# instance fields
.field protected A:Landroid/widget/TextView;

.field protected B:Landroid/widget/TextView;

.field protected C:Landroid/widget/Button;

.field protected D:Landroid/widget/TextView;

.field protected E:Landroid/widget/Button;

.field protected F:Landroid/widget/Button;

.field protected G:Landroid/widget/Button;

.field protected H:Landroid/widget/Button;

.field protected I:Landroid/widget/Button;

.field protected J:Landroid/view/View;

.field protected K:Landroid/widget/TextView;

.field protected L:Landroid/widget/Button;

.field protected M:Landroid/content/SharedPreferences;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/LinearLayout;

.field private P:Lcom/xueqiu/android/common/account/a;

.field private Q:Z

.field private R:I

.field private S:Landroid/content/Context;

.field protected j:Landroid/view/View;

.field protected k:Landroid/widget/TextView;

.field protected p:Landroid/widget/Button;

.field protected q:Landroid/widget/Button;

.field protected r:Landroid/widget/TextView;

.field protected s:Landroid/view/View;

.field protected t:Landroid/widget/TextView;

.field protected u:Landroid/widget/CheckBox;

.field protected v:Landroid/view/View;

.field protected w:Landroid/widget/TextView;

.field protected x:Landroid/widget/Button;

.field protected y:Landroid/widget/TextView;

.field protected z:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    .line 137
    iput-boolean v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->Q:Z

    .line 139
    iput v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->R:I

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/setting/SettingActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/setting/SettingActivity;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 75
    .line 7691
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v1, 0x7f0701d9

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07014d

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7692
    invoke-static {v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->c(Ljava/lang/String;)I

    move-result v0

    .line 7693
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0085

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 7694
    const v2, 0x7f0c0005

    new-instance v3, Lcom/xueqiu/android/common/setting/SettingActivity$26;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$26;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 7715
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 75
    return-void
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 75
    .line 4788
    const-string v1, "\"timestamp\":"

    .line 4789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4790
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 4791
    invoke-virtual {v2, v1, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 4792
    const-string v3, ","

    invoke-virtual {v2, v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 4793
    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 4794
    new-instance v5, Ljava/util/Date;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v5}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 4795
    invoke-virtual {v2, v0, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 4796
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 4797
    goto :goto_0

    .line 4798
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 2

    .prologue
    .line 75
    .line 5592
    invoke-virtual {p0}, Lcom/xueqiu/android/common/setting/SettingActivity;->h()Landroid/app/Dialog;

    .line 5593
    new-instance v0, Lcom/xueqiu/android/common/setting/SettingActivity$19;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$19;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    .line 5611
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/setting/SettingActivity$19;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 75
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/common/setting/SettingActivity;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->R:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->R:I

    return v0
.end method

.method private static c(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 756
    invoke-static {}, Lcom/xueqiu/android/base/r;->a()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c0006

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    move v0, v1

    .line 757
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 758
    aget-object v3, v2, v0

    .line 759
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 763
    :goto_1
    return v0

    .line 757
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 763
    goto :goto_1
.end method

.method static synthetic d(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/xueqiu/android/common/setting/SettingActivity;->j()V

    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/common/setting/SettingActivity;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->R:I

    return v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/setting/SettingActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->N:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 4

    .prologue
    .line 6069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 6186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 5723
    if-nez v0, :cond_0

    .line 5724
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    .line 7069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 7077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 5724
    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 5725
    if-eqz v0, :cond_0

    .line 5726
    new-instance v0, Lcom/xueqiu/android/common/setting/SettingActivity$27;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$27;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-static {p0, v0}, Lcom/xueqiu/android/base/util/ba;->a(Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/base/util/bb;)V

    .line 75
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/xueqiu/android/common/setting/SettingActivity;)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->Q:Z

    return v0
.end method

.method static synthetic i(Lcom/xueqiu/android/common/setting/SettingActivity;)Lcom/xueqiu/android/common/account/a;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->P:Lcom/xueqiu/android/common/account/a;

    return-object v0
.end method

.method private j()V
    .locals 6

    .prologue
    const v5, 0x7f0e0159

    const/4 v4, 0x0

    .line 642
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->J:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e036f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->K:Landroid/widget/TextView;

    .line 644
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->L:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 646
    const v0, 0x7f0c0005

    invoke-static {v0}, Lcom/xueqiu/android/base/r;->g(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v2, 0x7f0701d9

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07014d

    invoke-static {v3}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-static {v1}, Lcom/xueqiu/android/common/setting/SettingActivity;->c(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->K:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->J:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$21;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$21;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 657
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->L:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$22;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$22;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 663
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$24;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$24;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 674
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 678
    if-eqz v0, :cond_0

    .line 679
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v2, 0x7f0701ed

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 680
    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$25;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$25;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 688
    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/xueqiu/android/common/setting/SettingActivity;)V
    .locals 2

    .prologue
    .line 75
    .line 7719
    const-class v0, Lcom/xueqiu/android/common/setting/a;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/xueqiu/android/common/SingleFragmentActivity;->a(Landroid/content/Context;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method


# virtual methods
.method public about(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 620
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 621
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/AboutUsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 622
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 623
    return-void
.end method

.method public bindAccount(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 432
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/AccountBindingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 433
    return-void
.end method

.method public canCommentMe(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 526
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v1, 0x7f0701d8

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 527
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0085

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 528
    const v2, 0x7f07006e

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 529
    const v2, 0x7f0c000a

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/xueqiu/android/common/setting/SettingActivity$16;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$16;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 536
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 537
    return-void
.end method

.method public changeFontSize(Landroid/view/View;)V
    .locals 8

    .prologue
    const v7, 0x7f070165

    .line 478
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 479
    const v1, 0x7f0300ce

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 480
    const v0, 0x7f0e0342

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 481
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    const v1, 0x7f0e0343

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 484
    const/high16 v3, 0x41700000    # 15.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 486
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a0085

    invoke-direct {v4, v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f070163

    .line 487
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070070

    new-instance v6, Lcom/xueqiu/android/common/setting/SettingActivity$14;

    invoke-direct {v6, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$14;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    .line 488
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0700b1

    new-instance v6, Lcom/xueqiu/android/common/setting/SettingActivity$13;

    invoke-direct {v6, p0, v1, v3}, Lcom/xueqiu/android/common/setting/SettingActivity$13;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;Landroid/widget/SeekBar;Ljava/lang/Float;)V

    .line 494
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 500
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 502
    iget-object v2, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v4, 0x7f0701db

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070164

    invoke-static {v5}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 503
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 504
    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 505
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v2, v4

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 507
    new-instance v2, Lcom/xueqiu/android/common/setting/SettingActivity$15;

    invoke-direct {v2, p0, v0, v3}, Lcom/xueqiu/android/common/setting/SettingActivity$15;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;Landroid/widget/TextView;Ljava/lang/Float;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 523
    return-void
.end method

.method public changePassword(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 436
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/account/UpdatePasswordActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 437
    return-void
.end method

.method public changeStockColor(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 440
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v1, 0x7f0701ee

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0085

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 442
    const v2, 0x7f0703c0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 443
    const v2, 0x7f0c0007

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Lcom/xueqiu/android/common/setting/SettingActivity$10;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$10;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 450
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 451
    return-void
.end method

.method public changeTheme(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v1, 0x7f0701e0

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 455
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a0085

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 456
    const v2, 0x7f070079

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 457
    const v2, 0x7f0c0008

    new-instance v3, Lcom/xueqiu/android/common/setting/SettingActivity$11;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$11;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 468
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 469
    return-void
.end method

.method public feedback(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 4186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 582
    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/FeedbackActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 588
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 589
    return-void

    .line 585
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/community/StatusDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 586
    const-string v1, "status_id"

    const-wide/32 v2, 0x14987ed

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method public logout(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 626
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    const v2, 0x7f0a0085

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f070070

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    .line 627
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/common/setting/SettingActivity$20;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$20;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ba

    .line 638
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 639
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 768
    iget-boolean v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->Q:Z

    if-eqz v0, :cond_0

    .line 769
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    const-class v2, Lcom/xueqiu/android/common/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 770
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 771
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 772
    const v0, 0x7f040014

    const v1, 0x7f040017

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/common/setting/SettingActivity;->overridePendingTransition(II)V

    .line 773
    invoke-virtual {p0}, Lcom/xueqiu/android/common/setting/SettingActivity;->finish()V

    .line 777
    :goto_0
    return-void

    .line 775
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 146
    iput-object p0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/xueqiu/android/common/setting/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070235

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v0

    .line 1186
    iget-boolean v0, v0, Lcom/xueqiu/android/base/t;->d:Z

    .line 151
    if-eqz v0, :cond_12

    .line 152
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030031

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    .line 157
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/account/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/common/account/a;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->P:Lcom/xueqiu/android/common/account/a;

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0142

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->k:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->p:Landroid/widget/Button;

    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->q:Landroid/widget/Button;

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->r:Landroid/widget/TextView;

    .line 162
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->s:Landroid/view/View;

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->t:Landroid/widget/TextView;

    .line 164
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->v:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->w:Landroid/widget/TextView;

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->u:Landroid/widget/CheckBox;

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->x:Landroid/widget/Button;

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0150

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->y:Landroid/widget/TextView;

    .line 169
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0151

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->z:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->A:Landroid/widget/TextView;

    .line 171
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->B:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->C:Landroid/widget/Button;

    .line 173
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0155

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->D:Landroid/widget/TextView;

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->E:Landroid/widget/Button;

    .line 175
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->G:Landroid/widget/Button;

    .line 176
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->F:Landroid/widget/Button;

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->H:Landroid/widget/Button;

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->I:Landroid/widget/Button;

    .line 180
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e036e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->J:Landroid/view/View;

    .line 181
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0370

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->L:Landroid/widget/Button;

    .line 182
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->O:Landroid/widget/LinearLayout;

    .line 183
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    const v1, 0x7f0e0146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->N:Landroid/widget/TextView;

    .line 185
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->p:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$1;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->q:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$12;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$12;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->s:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v1, 0x7f0701ee

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->t:Landroid/widget/TextView;

    const v2, 0x7f0c0007

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->g(I)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->s:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$23;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$23;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->x:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 215
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->x:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$29;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$29;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->z:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 224
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v1, 0x7f0701d8

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->A:Landroid/widget/TextView;

    const v2, 0x7f0c000a

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->g(I)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->z:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$30;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$30;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->C:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->C:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$31;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$31;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->E:Landroid/widget/Button;

    if-eqz v0, :cond_6

    .line 244
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->E:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$32;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$32;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->G:Landroid/widget/Button;

    if-eqz v0, :cond_7

    .line 255
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->G:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$33;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$33;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->G:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$34;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$34;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 312
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->F:Landroid/widget/Button;

    if-eqz v0, :cond_8

    .line 313
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->F:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$2;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->H:Landroid/widget/Button;

    if-eqz v0, :cond_9

    .line 331
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->H:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$3;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    :cond_9
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->I:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 340
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->I:Landroid/widget/Button;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$4;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    :cond_a
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->u:Landroid/widget/CheckBox;

    if-eqz v0, :cond_b

    .line 349
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->u:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v2, 0x7f0701da

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 350
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->u:Landroid/widget/CheckBox;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$5;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 360
    :cond_b
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->v:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 361
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->M:Landroid/content/SharedPreferences;

    const v1, 0x7f0701e0

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->d(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 362
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->w:Landroid/widget/TextView;

    const v2, 0x7f0c0008

    invoke-static {v2}, Lcom/xueqiu/android/base/r;->g(I)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->v:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$6;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2041
    :cond_c
    invoke-static {}, Lcom/xueqiu/android/base/g;->a()Lcom/xueqiu/android/base/f;

    move-result-object v0

    .line 2119
    iget-boolean v0, v0, Lcom/xueqiu/android/base/f;->b:Z

    .line 371
    if-eqz v0, :cond_d

    .line 372
    invoke-direct {p0}, Lcom/xueqiu/android/common/setting/SettingActivity;->j()V

    .line 375
    :cond_d
    const-string v0, "release"

    const-string v1, "rc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 376
    new-instance v0, Lcom/xueqiu/android/common/setting/SettingActivity$7;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$7;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v1

    .line 3186
    iget-boolean v1, v1, Lcom/xueqiu/android/base/t;->d:Z

    .line 393
    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->r:Landroid/widget/TextView;

    if-eqz v1, :cond_13

    .line 395
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    :cond_e
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/setting/SettingActivity;->setContentView(Landroid/view/View;)V

    .line 402
    if-eqz p1, :cond_f

    .line 403
    const-string v0, "com.xueqiu.android.intent.action.CHANGE_THEME"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->Q:Z

    .line 406
    :cond_f
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    .line 407
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$8;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$8;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/ai;->b(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 421
    :cond_10
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->O:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_11

    .line 422
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->O:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/xueqiu/android/common/setting/SettingActivity$9;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/setting/SettingActivity$9;-><init>(Lcom/xueqiu/android/common/setting/SettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    :cond_11
    return-void

    .line 154
    :cond_12
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030030

    invoke-virtual {v0, v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->j:Landroid/view/View;

    goto/16 :goto_0

    .line 396
    :cond_13
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    .line 397
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 781
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 782
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->P:Lcom/xueqiu/android/common/account/a;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->P:Lcom/xueqiu/android/common/account/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/account/a;->b()V

    .line 785
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 473
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 474
    const-string v0, "com.xueqiu.android.intent.action.CHANGE_THEME"

    iget-boolean v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->Q:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 475
    return-void
.end method

.method public recommend(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 615
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/AppRecommendActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 616
    iget-object v1, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 617
    return-void
.end method

.method public toPushSettings(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 577
    iget-object v0, p0, Lcom/xueqiu/android/common/setting/SettingActivity;->S:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/xueqiu/android/common/setting/SettingsPushActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 578
    return-void
.end method
