.class public Lcom/xueqiu/android/community/UpdateUserInfoActivity;
.super Lcom/xueqiu/android/common/b;
.source "UpdateUserInfoActivity.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Landroid/view/View;

.field private E:Lcom/xueqiu/android/community/model/User;

.field private F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/xueqiu/android/base/b/x;

.field private H:Landroid/app/ProgressDialog;

.field private I:Landroid/view/View$OnClickListener;

.field private J:Landroid/view/View$OnClickListener;

.field private K:Landroid/view/View$OnClickListener;

.field private L:Landroid/view/View$OnClickListener;

.field private M:Landroid/view/View$OnClickListener;

.field private N:Landroid/view/View$OnClickListener;

.field j:Landroid/content/SharedPreferences;

.field k:Landroid/app/AlertDialog;

.field private p:Landroid/widget/ImageView;

.field private q:Ljava/io/File;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Lcom/xueqiu/android/base/b/x;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 89
    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p:Landroid/widget/ImageView;

    .line 90
    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->q:Ljava/io/File;

    .line 92
    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->r:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->s:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->t:Lcom/xueqiu/android/base/b/x;

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->u:Ljava/util/List;

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->v:Ljava/util/List;

    .line 435
    new-instance v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$21;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->I:Landroid/view/View$OnClickListener;

    .line 559
    new-instance v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$23;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$23;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->J:Landroid/view/View$OnClickListener;

    .line 680
    new-instance v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$7;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$7;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->K:Landroid/view/View$OnClickListener;

    .line 690
    new-instance v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$8;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$8;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->L:Landroid/view/View$OnClickListener;

    .line 702
    new-instance v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$9;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$9;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->M:Landroid/view/View$OnClickListener;

    .line 911
    new-instance v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$15;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->N:Landroid/view/View$OnClickListener;

    .line 945
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/base/b/x;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->G:Lcom/xueqiu/android/base/b/x;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->x:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 5

    .prologue
    const/16 v4, 0xb4

    const/4 v3, 0x1

    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    const-string v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 775
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 777
    const-string v1, "outputX"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 778
    const-string v1, "outputY"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 779
    const-string v1, "return-data"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 780
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 781
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Landroid/view/View;Ljava/util/List;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 78
    .line 11425
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->F:Ljava/util/List;

    .line 11426
    const v0, 0x7f0e01d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 11427
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 11428
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->F:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 11429
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 78
    .line 7460
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->H:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 8180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 7461
    new-instance v6, Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$22;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 8931
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/an;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 7461
    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->G:Lcom/xueqiu/android/base/b/x;

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Z)V
    .locals 2

    .prologue
    .line 6885
    if-eqz p1, :cond_1

    .line 6886
    const v0, 0x7f04001d

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 6887
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->D:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 6888
    new-instance v1, Lcom/xueqiu/android/community/UpdateUserInfoActivity$14;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$14;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6902
    :cond_0
    :goto_0
    return-void

    .line 6903
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->D:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6904
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->D:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const v1, 0x7f07028b

    .line 403
    const v0, 0x7f0702a1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 407
    :cond_0
    const v0, 0x7f07007f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 412
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 415
    :cond_2
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    const v0, 0x7f0e0301

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 419
    return-void

    .line 415
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, ""

    :cond_4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p2, ""

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/base/b/x;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->t:Lcom/xueqiu/android/base/b/x;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->A:Ljava/lang/String;

    return-object p1
.end method

.method protected static b(Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 529
    .line 530
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    :cond_0
    :goto_0
    return v1

    .line 534
    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    const-string v0, "[\\u4e00-\\u9fa5]"

    .line 539
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 540
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    move v0, v1

    .line 541
    :cond_2
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v1

    .line 542
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v3

    if-gt v2, v3, :cond_2

    .line 543
    add-int/lit8 v3, v0, 0x1

    .line 542
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 546
    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_4

    move v1, v4

    .line 547
    goto :goto_0

    .line 548
    :cond_4
    if-ne v0, v4, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_5

    move v1, v4

    .line 549
    goto :goto_0

    .line 550
    :cond_5
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    move v1, v4

    .line 551
    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->H:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->z:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->j()V

    return-void
.end method

.method static synthetic e(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->B:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->C:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic h(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic i(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 78
    .line 11830
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->H:Landroid/app/ProgressDialog;

    const v1, 0x7f070374

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 11831
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 12180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 13178
    iget-object v1, v1, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v1, p1, v0}, Lcom/xueqiu/android/base/b/an;->b(Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 11833
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$13;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 78
    return-void
.end method

.method static synthetic j(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w:Ljava/lang/String;

    return-object p1
.end method

.method private j()V
    .locals 11

    .prologue
    .line 298
    const v0, 0x7f070568

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->setTitle(I)V

    .line 300
    const v0, 0x7f0e0307

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 301
    const v1, 0x7f0e0302

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 302
    const v1, 0x7f0e02ff

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 303
    const v1, 0x7f0e02ec

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 304
    const v1, 0x7f0e02fb

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p:Landroid/widget/ImageView;

    .line 4364
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 4367
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f080023

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 4368
    const/4 v1, 0x0

    .line 4370
    iget-object v6, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    if-eqz v6, :cond_0

    .line 4371
    iget-object v6, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getProfileImageWidth_100()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4372
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->b()Lcom/d/a/b/e;

    move-result-object v6

    new-instance v7, Lcom/xueqiu/android/community/UpdateUserInfoActivity$20;

    invoke-direct {v7, p0, v5}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$20;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;I)V

    .line 4445
    iput-object v7, v6, Lcom/d/a/b/e;->q:Lcom/d/a/b/c/a;

    .line 4379
    invoke-virtual {v6}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v6

    .line 4381
    new-instance v7, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v7}, Lcom/xueqiu/android/base/util/o;-><init>()V

    .line 4382
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v8

    iget-object v9, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v9}, Lcom/xueqiu/android/community/model/User;->getProfileImageWidth_100()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v8, v9, v10, v6, v7}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 4394
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4395
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4396
    invoke-static {v1, v5}, Lcom/xueqiu/android/base/util/ad;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 4397
    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 307
    :cond_1
    const v1, 0x7f0e0309

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 308
    const v5, 0x7f0e030a

    invoke-virtual {p0, v5}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 309
    const v6, 0x7f0e0308

    invoke-virtual {p0, v6}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->D:Landroid/view/View;

    .line 311
    iget-object v6, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->K:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->L:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->M:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    const v0, 0x7f0e0303

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    const v0, 0x7f0e0301

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    const v0, 0x7f0e01f8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 322
    const v1, 0x7f0e0306

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 323
    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 324
    new-instance v2, Lcom/xueqiu/android/community/UpdateUserInfoActivity$18;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$18;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->A:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 339
    new-instance v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$19;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$19;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Landroid/widget/EditText;)V

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 360
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->z:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    return-void

    .line 4385
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v1

    sget-object v6, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    if-ne v1, v6, :cond_3

    .line 4386
    const v1, 0x7f020483

    .line 4390
    :goto_1
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto/16 :goto_0

    .line 4388
    :cond_3
    const v1, 0x7f020488

    goto :goto_1
.end method

.method private k()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 654
    move v1, v2

    .line 655
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 657
    iget-object v3, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->y:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 662
    :goto_1
    return v1

    .line 655
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method static synthetic k(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->z:Ljava/lang/String;

    return-object v0
.end method

.method private l()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 666
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->v:Ljava/util/List;

    invoke-direct {p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->k()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    move v2, v3

    .line 669
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_1

    .line 670
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 671
    iget-object v4, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->z:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 676
    :goto_1
    return v2

    .line 669
    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method static synthetic l(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 4

    .prologue
    .line 78
    .line 9500
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setScreenName(Ljava/lang/String;)V

    .line 9501
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setProvince(Ljava/lang/String;)V

    .line 9502
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setCity(Ljava/lang/String;)V

    .line 9503
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setDescription(Ljava/lang/String;)V

    .line 9504
    const v0, 0x7f07017a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9505
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setGender(Lcom/xueqiu/android/community/model/User$Gender;)V

    .line 9512
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 9513
    const-string v1, "screenName"

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9514
    const-string v1, "city"

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9515
    const-string v1, "province"

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9516
    const-string v1, "gender"

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User$Gender;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9518
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/storage/DBManager;->updateUserInfoById(Landroid/content/ContentValues;Ljava/lang/String;)Z

    .line 9521
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.user.UPDATE_USER_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9522
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9523
    const-string v2, "user"

    iget-object v3, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 9524
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9525
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 78
    return-void

    .line 9506
    :cond_0
    const v0, 0x7f07017b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9507
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->MALE:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setGender(Lcom/xueqiu/android/community/model/User$Gender;)V

    goto :goto_0

    .line 9509
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    sget-object v1, Lcom/xueqiu/android/community/model/User$Gender;->UNKNOW:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/model/User;->setGender(Lcom/xueqiu/android/community/model/User$Gender;)V

    goto :goto_0
.end method

.method private m()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 1031
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1032
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    .line 1031
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1034
    :cond_0
    return-object v2
.end method

.method static synthetic n(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 3

    .prologue
    const v2, 0x7f0e02fa

    const/4 v1, 0x1

    .line 78
    .line 9937
    const v0, 0x7f0e01f8

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 9938
    const v0, 0x7f0e0306

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 9940
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 9941
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 78
    return-void
.end method

.method static synthetic o(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 10

    .prologue
    const/high16 v6, 0x60000

    const/4 v9, 0x0

    .line 10570
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10571
    const v0, 0x7f030061

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 10593
    const v0, 0x7f0e01d5

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/NumberPicker;

    .line 10594
    const v1, 0x7f0e01d6

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/NumberPicker;

    .line 10596
    invoke-direct {p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->k()I

    move-result v2

    .line 10597
    invoke-virtual {v0, v6}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 10598
    invoke-direct {p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->m()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 10599
    invoke-virtual {v0, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 10600
    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->u:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 10601
    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 10603
    invoke-virtual {v1, v6}, Landroid/widget/NumberPicker;->setDescendantFocusability(I)V

    .line 10605
    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->v:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->F:Ljava/util/List;

    .line 10607
    invoke-virtual {v1, v9}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 10608
    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->F:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 10609
    new-instance v2, Lcom/xueqiu/android/community/UpdateUserInfoActivity$4;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$4;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 10618
    invoke-direct {p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 10621
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "changeValueByOne"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 10622
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 10623
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3

    .line 10635
    :goto_0
    new-instance v2, Lcom/xueqiu/android/community/UpdateUserInfoActivity$5;

    invoke-direct {v2, p0, v4}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$5;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 10643
    new-instance v2, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;

    invoke-direct {v2, p0, v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$6;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Landroid/widget/NumberPicker;Landroid/widget/NumberPicker;)V

    invoke-virtual {v1, v2}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 10573
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 10574
    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$3;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    invoke-virtual {v3, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/xueqiu/android/community/UpdateUserInfoActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$2;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    .line 10581
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 10587
    const-string v0, "\u6240\u5728\u5730"

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 10588
    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 10589
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 78
    return-void

    .line 10625
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 10627
    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 10629
    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 10631
    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic p(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->F:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V
    .locals 3

    .prologue
    .line 11715
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f070211

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const v2, 0x7f0703f6

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 11716
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070372

    .line 11717
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/UpdateUserInfoActivity$10;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$10;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    .line 11718
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 11733
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 78
    return-void
.end method

.method static synthetic t(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/io/File;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->q:Ljava/io/File;

    return-object v0
.end method

.method static synthetic u(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic w(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method static synthetic x(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->D:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method final a(Ljava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 220
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 221
    const-string v2, "province"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 222
    const-string v3, "city"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    .line 224
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 225
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    iget-object v5, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->u:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 232
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 233
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    const v4, 0x7f07028b

    invoke-virtual {p0, v4}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 239
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 240
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 241
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 242
    const v7, 0x7f07007f

    invoke-virtual {p0, v7}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_1
    array-length v4, v5

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v7, v5, v2

    .line 246
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->v:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    :cond_4
    new-instance v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$17;

    invoke-direct {v0, p0, p2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$17;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Z)V

    .line 289
    invoke-virtual {v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$17;->start()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_3
    return-void

    .line 292
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 739
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 740
    packed-switch p1, :pswitch_data_0

    .line 761
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 762
    return-void

    .line 743
    :pswitch_0
    if-eqz p3, :cond_0

    .line 744
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 748
    :pswitch_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->q:Ljava/io/File;

    const-string v2, "snowball_temp.jpeg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 749
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 753
    :pswitch_2
    if-eqz p3, :cond_0

    .line 4789
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 4790
    if-eqz v0, :cond_0

    .line 4791
    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 4792
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->p:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 4794
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->t:Lcom/xueqiu/android/base/b/x;

    if-eqz v1, :cond_1

    .line 4795
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->t:Lcom/xueqiu/android/base/b/x;

    .line 5329
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/volley/n;->h:Z

    .line 4798
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->H:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 4800
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4801
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 4802
    new-instance v0, Lcom/xueqiu/android/base/b/t;

    invoke-direct {v0}, Lcom/xueqiu/android/base/b/t;-><init>()V

    .line 6180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    .line 4803
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v3, "upload_profile_image.jpeg"

    invoke-virtual {v2, v1, v3, v0}, Lcom/xueqiu/android/base/b/ai;->b([BLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v1

    iput-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->t:Lcom/xueqiu/android/base/b/x;

    .line 4804
    invoke-virtual {v0, p0}, Lcom/xueqiu/android/base/b/t;->a(Landroid/app/Activity;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/UpdateUserInfoActivity$11;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$11;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    goto :goto_0

    .line 740
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->D:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->D:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1027
    :goto_0
    return-void

    .line 1026
    :cond_0
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const v3, 0x7f07028b

    const v2, 0x7f07017c

    .line 125
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const v0, 0x7f0300be

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    .line 133
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w:Ljava/lang/String;

    .line 135
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->x:Ljava/lang/String;

    .line 136
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->y:Ljava/lang/String;

    .line 137
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->z:Ljava/lang/String;

    .line 138
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->A:Ljava/lang/String;

    .line 164
    :cond_0
    :goto_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "snowball"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->q:Ljava/io/File;

    .line 165
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->H:Landroid/app/ProgressDialog;

    .line 166
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->H:Landroid/app/ProgressDialog;

    const v1, 0x7f070342

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->H:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->H:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/xueqiu/android/community/UpdateUserInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$1;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2187
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->j:Landroid/content/SharedPreferences;

    .line 2188
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->j:Landroid/content/SharedPreferences;

    const-string v1, "province_city_data"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2190
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->H:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 2191
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->H:Landroid/app/ProgressDialog;

    const v1, 0x7f0701cf

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 2192
    new-instance v1, Lcom/xueqiu/android/community/UpdateUserInfoActivity$12;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity$12;-><init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 4116
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/b/an;->c(Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2192
    :goto_1
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 143
    sget-object v0, Lcom/xueqiu/android/community/UpdateUserInfoActivity$16;->a:[I

    iget-object v1, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User$Gender;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 151
    :cond_2
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w:Ljava/lang/String;

    .line 155
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, ""

    :goto_3
    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->x:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    :goto_4
    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->y:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f07055a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->z:Ljava/lang/String;

    .line 158
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ""

    :goto_6
    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->A:Ljava/lang/String;

    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->B:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->C:Ljava/lang/String;

    goto/16 :goto_0

    .line 145
    :pswitch_0
    const v0, 0x7f07017a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w:Ljava/lang/String;

    goto :goto_2

    .line 148
    :pswitch_1
    const v0, 0x7f07017b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->w:Ljava/lang/String;

    goto :goto_2

    .line 155
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 157
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 158
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 2212
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->a(Ljava/lang/String;Z)V

    .line 2213
    invoke-direct {p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->j()V

    goto/16 :goto_1

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.user.UPDATE_USER_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 489
    const-string v2, "user"

    iget-object v3, p0, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->E:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 490
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 494
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 495
    return-void
.end method
