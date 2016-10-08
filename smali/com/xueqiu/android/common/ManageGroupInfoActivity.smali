.class public Lcom/xueqiu/android/common/ManageGroupInfoActivity;
.super Lcom/xueqiu/android/common/b;
.source "ManageGroupInfoActivity.java"


# instance fields
.field j:Landroid/content/Context;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/model/BaseGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/LinearLayout$LayoutParams;

.field private s:Landroid/app/ProgressDialog;

.field private t:I

.field private u:Z

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->t:I

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/model/SNBJSONObject;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 52
    .line 7557
    const/4 v0, 0x1

    .line 7558
    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/model/SNBJSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7559
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/model/SNBJSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 7560
    if-eqz v1, :cond_0

    const-string v2, "result"

    .line 7561
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "result"

    .line 7562
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "result"

    .line 7563
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "error_description"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7565
    const-string v0, "result"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error_description"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 7567
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 7568
    goto :goto_0

    .line 7569
    :cond_1
    const/4 v0, 0x0

    .line 52
    goto :goto_1
.end method

.method private a(ILcom/xueqiu/android/common/model/BaseGroupInfo;)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 226
    const v0, 0x7f0300d6

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 228
    if-nez p2, :cond_2

    move v1, v2

    .line 229
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    const-string v0, "-1"

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-virtual {v4, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 232
    if-eqz v1, :cond_0

    .line 233
    new-instance p2, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    invoke-direct {p2}, Lcom/xueqiu/android/common/model/BaseGroupInfo;-><init>()V

    .line 234
    iput-boolean v2, p2, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsAdd:Z

    .line 235
    const-string v5, ""

    iput-object v5, p2, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    .line 236
    iget-object v5, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_0
    iput-object v0, p2, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mViewTag:Ljava/lang/String;

    .line 240
    const v0, 0x7f0e0352

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v5, Lcom/xueqiu/android/common/ManageGroupInfoActivity$6;

    invoke-direct {v5, p0, v4, v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity$6;-><init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Landroid/view/View;Z)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v0, 0x7f0e0353

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 249
    new-instance v5, Lcom/xueqiu/android/base/util/u;

    const/16 v6, 0x10

    invoke-direct {v5, v6}, Lcom/xueqiu/android/base/util/u;-><init>(I)V

    .line 250
    new-array v6, v2, [Landroid/text/InputFilter;

    aput-object v5, v6, v3

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 251
    const v3, 0x7f070439

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 252
    iget-object v3, p2, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    new-instance v3, Lcom/xueqiu/android/common/ManageGroupInfoActivity$7;

    invoke-direct {v3, p0, v4}, Lcom/xueqiu/android/common/ManageGroupInfoActivity$7;-><init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 286
    iget-object v3, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->p:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v3, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->q:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->r:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4, p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 288
    if-eqz v1, :cond_1

    .line 289
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 290
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 291
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 293
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 228
    goto/16 :goto_0

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    iget-wide v6, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;I)V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(ILcom/xueqiu/android/common/model/BaseGroupInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;IZ)V
    .locals 0

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(IZ)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 6212
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 6213
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 6214
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 6215
    invoke-direct {p0, v1, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(ILcom/xueqiu/android/common/model/BaseGroupInfo;)V

    .line 6213
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    .line 6574
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 6575
    if-nez v1, :cond_1

    .line 6576
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 6577
    iget-boolean v3, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    if-eqz v3, :cond_0

    .line 6578
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    goto :goto_0

    .line 52
    :cond_1
    return v1
.end method

.method static synthetic b(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    .line 6587
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "success"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 6588
    if-nez v1, :cond_1

    .line 6589
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 6590
    iget-boolean v3, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsUpdate:Z

    if-eqz v3, :cond_0

    .line 6591
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsUpdate:Z

    goto :goto_0

    .line 52
    :cond_1
    return v1
.end method

.method static synthetic c(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->j()V

    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->s:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->u:Z

    return v0
.end method

.method static synthetic g(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->v:I

    return v0
.end method

.method private j()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 368
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 369
    if-eqz v0, :cond_8

    .line 372
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 375
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 377
    iget-object v6, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 378
    const v0, 0x7f07018d

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 5374
    :goto_1
    return-void

    .line 382
    :cond_0
    iget-object v6, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    if-nez v6, :cond_1

    move v0, v3

    .line 400
    :goto_2
    if-eqz v0, :cond_5

    .line 401
    const v0, 0x7f07018e

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_1

    .line 386
    :cond_1
    iget-boolean v6, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    if-nez v6, :cond_2

    .line 387
    iget-object v6, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_2
    iget-boolean v6, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsAdd:Z

    if-eqz v6, :cond_3

    move v1, v3

    .line 393
    :cond_3
    iget-boolean v6, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsUpdate:Z

    if-eqz v6, :cond_4

    move v1, v3

    .line 396
    :cond_4
    iget-boolean v0, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    if-eqz v0, :cond_9

    move v0, v3

    :goto_3
    move v1, v0

    .line 399
    goto :goto_0

    .line 402
    :cond_5
    if-eqz v1, :cond_8

    .line 4416
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->s:Landroid/app/ProgressDialog;

    if-nez v0, :cond_6

    .line 4417
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->s:Landroid/app/ProgressDialog;

    .line 4418
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->s:Landroid/app/ProgressDialog;

    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4419
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4422
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->s:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 5180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 4424
    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    iget v2, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->t:I

    iget v4, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->v:I

    new-instance v5, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;

    invoke-direct {v5, p0, p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity$9;-><init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 5373
    if-ne v3, v2, :cond_7

    .line 5374
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->h:Lcom/xueqiu/android/base/b/an;

    invoke-virtual {v0, v1, v5}, Lcom/xueqiu/android/base/b/an;->b(Ljava/util/List;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_1

    .line 5376
    :cond_7
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->i:Lcom/xueqiu/android/base/b/ak;

    invoke-virtual {v0, v1, v4, v5}, Lcom/xueqiu/android/base/b/ak;->a(Ljava/util/List;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_1

    .line 405
    :cond_8
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->finish()V

    goto :goto_1

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_2
.end method


# virtual methods
.method final a(IZ)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 312
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 314
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 315
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v8

    .line 316
    iget-object v3, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 318
    if-eqz p2, :cond_4

    .line 319
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 321
    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mViewTag:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 4345
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 4346
    :goto_1
    if-ge p1, v2, :cond_6

    .line 4347
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->p:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    .line 4349
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4350
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4351
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 4354
    iget-object v1, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4355
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 4356
    if-eqz v0, :cond_2

    iget-object v5, v1, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mViewTag:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4357
    iput-object v3, v1, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mViewTag:Ljava/lang/String;

    .line 4346
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 327
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 328
    iget-wide v4, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mId:J

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    .line 329
    iput-boolean v8, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    .line 330
    iput-boolean v9, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsAdd:Z

    .line 331
    iput-boolean v9, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsUpdate:Z

    goto/16 :goto_0

    .line 337
    :cond_6
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 629
    .line 6125
    const/4 v1, 0x0

    .line 6126
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 6127
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 6128
    iget-boolean v3, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsAdd:Z

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    if-nez v3, :cond_1

    iget-boolean v0, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsUpdate:Z

    if-eqz v0, :cond_0

    .line 6129
    :cond_1
    const/4 v0, 0x1

    .line 6134
    :goto_0
    if-eqz v0, :cond_2

    .line 6135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070566

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070190

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07033f

    new-instance v2, Lcom/xueqiu/android/common/ManageGroupInfoActivity$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity$3;-><init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)V

    .line 6136
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    new-instance v2, Lcom/xueqiu/android/common/ManageGroupInfoActivity$2;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity$2;-><init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)V

    .line 6141
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6146
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void

    .line 6148
    :cond_2
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->finish()V

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 75
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 76
    const v0, 0x7f0300d5

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->setContentView(I)V

    .line 78
    iput-object p0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->j:Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->u:Z

    .line 81
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_group_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->t:I

    .line 82
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_portfolio_category"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->v:I

    .line 83
    iget v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->t:I

    if-ne v2, v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->finish()V

    .line 87
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->p:Ljava/util/List;

    .line 2095
    const-string v0, "\u7ba1\u7406\u5206\u7ec4"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 2097
    const v0, 0x7f0e0350

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->q:Landroid/widget/LinearLayout;

    .line 2098
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->r:Landroid/widget/LinearLayout$LayoutParams;

    .line 2100
    const v0, 0x7f0e0351

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2101
    new-instance v1, Lcom/xueqiu/android/common/ManageGroupInfoActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity$1;-><init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2153
    iget v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->t:I

    if-ne v3, v0, :cond_1

    .line 3180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 4077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 2154
    new-instance v1, Lcom/xueqiu/android/common/ManageGroupInfoActivity$4;

    invoke-direct {v1, p0, p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity$4;-><init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/ai;->k(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/base/b/x;)V

    .line 2208
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->h()Landroid/app/Dialog;

    .line 91
    return-void

    .line 4180
    :cond_1
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    .line 2182
    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    iget v5, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->v:I

    new-instance v6, Lcom/xueqiu/android/common/ManageGroupInfoActivity$5;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity$5;-><init>(Lcom/xueqiu/android/common/ManageGroupInfoActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual/range {v1 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(JLjava/lang/String;ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->a(Lcom/xueqiu/android/base/b/x;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 653
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v4, [I

    const v2, 0x7f01008f

    aput v2, v1, v3

    .line 654
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 657
    const v1, 0x7f0700af

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 658
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 657
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 659
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 8

    .prologue
    .line 601
    :try_start_0
    iget-boolean v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->u:Z

    if-eqz v0, :cond_1

    .line 602
    iget v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->t:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 5633
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 5635
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 5636
    iget-boolean v3, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    if-nez v3, :cond_0

    .line 5637
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 5638
    const-string v4, "id"

    iget-wide v6, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mId:J

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 5639
    const-string v4, "name"

    iget-object v5, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5640
    const-string v4, "orderId"

    iget v0, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mOrderId:I

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 5641
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 620
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 621
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 622
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 624
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 625
    return-void

    .line 5644
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "key_friendship_groups"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5645
    invoke-static {p0}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.xueqiu.android.action.USER_GROUP_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    goto :goto_1

    .line 605
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 606
    iget-object v0, p0, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;

    .line 607
    iget-boolean v3, v0, Lcom/xueqiu/android/common/model/BaseGroupInfo;->mIsDelete:Z

    if-nez v3, :cond_4

    .line 608
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 611
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 612
    const-string v2, "group_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 613
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->setResult(ILandroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 664
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 665
    invoke-direct {p0}, Lcom/xueqiu/android/common/ManageGroupInfoActivity;->j()V

    .line 668
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
