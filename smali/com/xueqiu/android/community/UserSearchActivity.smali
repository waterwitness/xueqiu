.class public Lcom/xueqiu/android/community/UserSearchActivity;
.super Lcom/xueqiu/android/common/b;
.source "UserSearchActivity.java"


# instance fields
.field private A:Landroid/widget/LinearLayout;

.field private B:Lcom/xueqiu/android/community/a/ah;

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private D:Lcom/xueqiu/android/base/b/x;

.field private E:Z

.field private F:Lcom/xueqiu/android/community/model/User;

.field private G:I

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:I

.field private K:Z

.field private L:Z

.field private M:Z

.field private j:I

.field private k:Landroid/widget/ListView;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/RelativeLayout;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Landroid/widget/RelativeLayout;

.field private v:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/LinearLayout;

.field private z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 45
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 51
    iput v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    .line 74
    iput-boolean v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->E:Z

    .line 77
    iput v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->G:I

    .line 78
    iput-boolean v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->H:Z

    .line 81
    iput v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->J:I

    .line 82
    iput-boolean v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->K:Z

    .line 90
    iput-boolean v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->L:Z

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserSearchActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->I:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;
    .locals 1

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/lang/String;ZZ)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1300
    if-eqz p2, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1302
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    const v2, 0x7f0e076c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    :cond_0
    new-instance v1, Lcom/xueqiu/android/community/UserSearchActivity$9;

    invoke-direct {v1, p0, p0, p2}, Lcom/xueqiu/android/community/UserSearchActivity$9;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;Lcom/xueqiu/android/base/b/q;Z)V

    .line 1345
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    iget v3, p0, Lcom/xueqiu/android/community/UserSearchActivity;->G:I

    if-eqz p3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/xueqiu/android/base/b/ai;->b(Ljava/lang/String;IILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->D:Lcom/xueqiu/android/base/b/x;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/UserSearchActivity;Z)V
    .locals 5

    .prologue
    const v4, 0x7f0e076c

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 45
    .line 1482
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->D:Lcom/xueqiu/android/base/b/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->D:Lcom/xueqiu/android/base/b/x;

    .line 2336
    iget-boolean v0, v0, Lcom/android/volley/n;->h:Z

    .line 1482
    if-nez v0, :cond_0

    .line 1483
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->D:Lcom/xueqiu/android/base/b/x;

    .line 3329
    iput-boolean v1, v0, Lcom/android/volley/n;->h:Z

    .line 1485
    :cond_0
    if-nez p1, :cond_1

    .line 1486
    iput v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->J:I

    .line 1487
    iput-boolean v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->K:Z

    .line 1498
    :goto_0
    new-instance v0, Lcom/xueqiu/android/community/UserSearchActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/community/UserSearchActivity$2;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;Z)V

    .line 1552
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    iget v2, p0, Lcom/xueqiu/android/community/UserSearchActivity;->J:I

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/base/b/ai;->a(ILcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->D:Lcom/xueqiu/android/base/b/x;

    .line 1495
    :goto_1
    return-void

    .line 1489
    :cond_1
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->K:Z

    if-eqz v0, :cond_2

    .line 1490
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1491
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1493
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1494
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->I:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/xueqiu/android/community/model/User;",
            "I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 349
    const-string v0, "name_key"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v0, "id_key"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v0, "block_status"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getBlockStatus()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v0, "profile_image"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getProfileLargeImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v0, "description"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, "verified_description"

    invoke-virtual {p1}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v0, "type_key"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-object p0
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->v:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setTextColor(I)V

    .line 278
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 279
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->w:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->z:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/community/UserSearchActivity;Z)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->v:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/common/widget/AutoResizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    return-void
.end method

.method private b(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 421
    if-eqz p1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 423
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 428
    :goto_0
    return-void

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->A:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 426
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/UserSearchActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    return-object v0
.end method

.method private c(I)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 431
    .line 432
    if-ne p1, v0, :cond_0

    .line 437
    :goto_0
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/UserSearchActivity$11;

    invoke-direct {v2, p0, p1}, Lcom/xueqiu/android/community/UserSearchActivity$11;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;I)V

    invoke-virtual {v1, v0, v2}, Lcom/xueqiu/android/base/b/ai;->a(ZLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 479
    return-void

    .line 434
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    .line 435
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/UserSearchActivity;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->H:Z

    return p1
.end method

.method static synthetic d(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/UserSearchActivity;Z)Z
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->K:Z

    return p1
.end method

.method static synthetic e(Lcom/xueqiu/android/community/UserSearchActivity;)Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/community/UserSearchActivity;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/xueqiu/android/community/UserSearchActivity;->j()V

    return-void
.end method

.method static synthetic g(Lcom/xueqiu/android/community/UserSearchActivity;)I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->G:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->G:I

    return v0
.end method

.method static synthetic h(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/model/User;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->F:Lcom/xueqiu/android/community/model/User;

    return-object v0
.end method

.method static synthetic i(Lcom/xueqiu/android/community/UserSearchActivity;)Lcom/xueqiu/android/community/a/ah;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->B:Lcom/xueqiu/android/community/a/ah;

    return-object v0
.end method

.method private j()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 360
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 361
    invoke-direct {p0, v7}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Z)V

    .line 363
    iget-boolean v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->E:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->F:Lcom/xueqiu/android/community/model/User;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    if-ne v0, v6, :cond_0

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 365
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 366
    const-string v2, "type_key"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    iget-boolean v2, p0, Lcom/xueqiu/android/community/UserSearchActivity;->L:Z

    if-eqz v2, :cond_3

    .line 369
    iget-boolean v2, p0, Lcom/xueqiu/android/community/UserSearchActivity;->M:Z

    if-eqz v2, :cond_0

    .line 370
    iget-object v2, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    iget-object v3, p0, Lcom/xueqiu/android/community/UserSearchActivity;->F:Lcom/xueqiu/android/community/model/User;

    const/4 v4, 0x3

    invoke-static {v0, v3, v4}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 372
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 398
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 399
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    if-nez v0, :cond_4

    .line 401
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->B:Lcom/xueqiu/android/community/a/ah;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 412
    :cond_1
    :goto_1
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    if-nez v0, :cond_5

    .line 413
    invoke-direct {p0, v7}, Lcom/xueqiu/android/community/UserSearchActivity;->c(I)V

    .line 417
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->B:Lcom/xueqiu/android/community/a/ah;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 418
    return-void

    .line 375
    :cond_3
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v2

    iget-object v3, p0, Lcom/xueqiu/android/community/UserSearchActivity;->F:Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    new-instance v3, Lcom/xueqiu/android/community/UserSearchActivity$10;

    invoke-direct {v3, p0, v0, v1}, Lcom/xueqiu/android/community/UserSearchActivity$10;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v2, v4, v5, v3}, Lcom/xueqiu/android/base/b/ai;->j(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto :goto_0

    .line 402
    :cond_4
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    if-ne v0, v6, :cond_1

    .line 404
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->B:Lcom/xueqiu/android/community/a/ah;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 414
    :cond_5
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    if-ne v0, v6, :cond_2

    .line 415
    invoke-direct {p0, v6}, Lcom/xueqiu/android/community/UserSearchActivity;->c(I)V

    goto :goto_2
.end method

.method static synthetic j(Lcom/xueqiu/android/community/UserSearchActivity;)V
    .locals 5

    .prologue
    .line 3580
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 4077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v2

    .line 3580
    const/4 v1, 0x1

    new-instance v4, Lcom/xueqiu/android/community/UserSearchActivity$3;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/community/UserSearchActivity$3;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->c(JILcom/xueqiu/android/base/b/p;)Lcom/android/volley/n;

    .line 45
    return-void
.end method

.method static synthetic k(Lcom/xueqiu/android/community/UserSearchActivity;)I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->J:I

    return v0
.end method

.method static synthetic l(Lcom/xueqiu/android/community/UserSearchActivity;)I
    .locals 2

    .prologue
    .line 45
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->J:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->J:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/lang/Exception;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/Exception;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 561
    if-eqz p2, :cond_1

    .line 562
    invoke-static {p2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    if-eqz p1, :cond_0

    .line 566
    if-eqz p3, :cond_2

    .line 567
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 572
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->B:Lcom/xueqiu/android/community/a/ah;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 570
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 98
    const v0, 0x7f0300c4

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->setContentView(I)V

    .line 100
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_paid_to_user"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->F:Lcom/xueqiu/android/community/model/User;

    .line 101
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    .line 1112
    const v0, 0x7f0e032b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->t:Landroid/widget/RelativeLayout;

    .line 1113
    const v0, 0x7f0e026c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->r:Landroid/widget/RelativeLayout;

    .line 1114
    const v0, 0x7f0e026d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->s:Landroid/widget/ImageView;

    .line 1115
    const v0, 0x7f0e026f

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->v:Lcom/xueqiu/android/common/widget/AutoResizeTextView;

    .line 1116
    const v0, 0x7f0e0270

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->w:Landroid/widget/TextView;

    .line 1117
    const v0, 0x7f0e026e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->x:Landroid/widget/TextView;

    .line 1118
    const v0, 0x7f0e0098

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->y:Landroid/widget/LinearLayout;

    .line 1119
    const v0, 0x7f0e0273

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->z:Landroid/widget/TextView;

    .line 1121
    const v0, 0x7f0e0313

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    .line 1122
    const v0, 0x7f0e0312

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->p:Landroid/widget/EditText;

    .line 1123
    const v0, 0x7f0e0314

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->A:Landroid/widget/LinearLayout;

    .line 1124
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03021c

    iget-object v2, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    .line 1125
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1126
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/community/UserSearchActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserSearchActivity$1;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1137
    const v0, 0x7f0e032c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->u:Landroid/widget/RelativeLayout;

    .line 1138
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->r:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/xueqiu/android/community/UserSearchActivity$4;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserSearchActivity$4;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    .line 1145
    new-instance v0, Lcom/xueqiu/android/community/a/ah;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->C:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/xueqiu/android/community/a/ah;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->B:Lcom/xueqiu/android/community/a/ah;

    .line 1146
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 1147
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1148
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->B:Lcom/xueqiu/android/community/a/ah;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1149
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/UserSearchActivity$5;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserSearchActivity$5;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1173
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->k:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/UserSearchActivity$6;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserSearchActivity$6;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1209
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->q:Landroid/view/View;

    new-instance v1, Lcom/xueqiu/android/community/UserSearchActivity$7;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserSearchActivity$7;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1221
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->p:Landroid/widget/EditText;

    new-instance v1, Lcom/xueqiu/android/community/UserSearchActivity$8;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/UserSearchActivity$8;-><init>(Lcom/xueqiu/android/community/UserSearchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1253
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    if-ne v0, v4, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1294
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1257
    :cond_0
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    if-nez v0, :cond_2

    .line 1258
    const v0, 0x7f07035e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserSearchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1261
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1262
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xueqiu/android/community/UserSearchActivity;->b(I)V

    .line 1263
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1264
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/xueqiu/android/community/UserSearchActivity;->j()V

    .line 108
    return-void

    .line 1265
    :cond_2
    iget v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->j:I

    if-ne v0, v4, :cond_1

    .line 1266
    const v0, 0x7f07035d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xueqiu/android/community/UserSearchActivity;->b(Ljava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/xueqiu/android/community/UserSearchActivity;->t:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserSearchActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 1268
    invoke-virtual {p0}, Lcom/xueqiu/android/community/UserSearchActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1270
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/xueqiu/android/community/UserSearchActivity;->b(I)V

    .line 1271
    iget-object v1, p0, Lcom/xueqiu/android/community/UserSearchActivity;->s:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1272
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 1259
    nop

    :array_0
    .array-data 4
        0x7f0100d6
        0x7f0100da
        0x7f010091
    .end array-data

    .line 1268
    :array_1
    .array-data 4
        0x7f0100d7
        0x7f010092
    .end array-data
.end method
