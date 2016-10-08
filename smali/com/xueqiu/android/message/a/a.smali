.class public final Lcom/xueqiu/android/message/a/a;
.super Landroid/widget/BaseAdapter;
.source "AlphabetIndexUserAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Lcom/emilsjolander/components/stickylistheaders/StickyListHeadersAdapter;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Z

.field private e:Landroid/content/Context;

.field private f:Lcom/d/a/b/f;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;"
        }
    .end annotation
.end field

.field private h:[I

.field private i:[Ljava/lang/Character;

.field private j:Landroid/view/LayoutInflater;

.field private k:Ljava/lang/String;

.field private l:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/d/a/b/f;[JLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/d/a/b/f;",
            "[J",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 59
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    iput-object v0, p0, Lcom/xueqiu/android/message/a/a;->k:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/message/a/a;->d:Z

    .line 68
    iput-object p1, p0, Lcom/xueqiu/android/message/a/a;->e:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/xueqiu/android/message/a/a;->f:Lcom/d/a/b/f;

    .line 70
    iput-object p3, p0, Lcom/xueqiu/android/message/a/a;->l:[J

    .line 71
    invoke-direct {p0}, Lcom/xueqiu/android/message/a/a;->b()[Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/a;->i:[Ljava/lang/Character;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    .line 74
    invoke-virtual {p0, p4}, Lcom/xueqiu/android/message/a/a;->a(Ljava/util/List;)V

    .line 75
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/a;->j:Landroid/view/LayoutInflater;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/message/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/message/a/a;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/xueqiu/android/message/a/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/message/a/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/message/a/a;->g:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(C)Z
    .locals 1

    .prologue
    .line 41
    invoke-static {p0}, Lcom/xueqiu/android/message/a/a;->b(C)Z

    move-result v0

    return v0
.end method

.method private a(J)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/xueqiu/android/message/a/a;->l:[J

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xueqiu/android/message/a/a;->l:[J

    array-length v1, v1

    if-lez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/xueqiu/android/message/a/a;->l:[J

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    .line 117
    :cond_0
    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/a/a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/message/a/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    return-object p1
.end method

.method private static b(C)Z
    .locals 1

    .prologue
    .line 511
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()[Ljava/lang/Character;
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Character;

    .line 107
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/xueqiu/android/message/a/a;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v1, v0

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    :cond_0
    return-object v1
.end method

.method static synthetic c(Lcom/xueqiu/android/message/a/a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 101
    .line 1171
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1174
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 1175
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 1176
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 1175
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 101
    :goto_1
    iput-object v0, p0, Lcom/xueqiu/android/message/a/a;->h:[I

    .line 102
    invoke-direct {p0}, Lcom/xueqiu/android/message/a/a;->b()[Ljava/lang/Character;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/message/a/a;->i:[Ljava/lang/Character;

    .line 103
    return-void

    .line 1181
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 1182
    const/4 v0, 0x1

    move v3, v2

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 1183
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .line 1184
    invoke-static {v3}, Lcom/xueqiu/android/message/a/a;->b(C)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-static {v5}, Lcom/xueqiu/android/message/a/a;->b(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1185
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 1186
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    :cond_2
    invoke-static {v3}, Lcom/xueqiu/android/message/a/a;->b(C)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v5

    if-eq v5, v3, :cond_3

    .line 1190
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 1191
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1182
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 1195
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [I

    .line 1196
    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 1197
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    .line 1196
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    move-object v0, v2

    .line 1199
    goto/16 :goto_1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 500
    :cond_1
    :goto_0
    return-void

    .line 469
    :cond_2
    new-instance v0, Lcom/xueqiu/android/message/a/a$2;

    invoke-direct {v0, p0, p1}, Lcom/xueqiu/android/message/a/a$2;-><init>(Lcom/xueqiu/android/message/a/a;Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/a$2;->start()V

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/community/model/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p1, :cond_2

    .line 1092
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1094
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/model/User;->setPinyinScreenName(Ljava/lang/String;)V

    .line 1095
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1126
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->l:[J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->l:[J

    array-length v0, v0

    if-lez v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->l:[J

    invoke-static {v0}, Ljava/util/Arrays;->sort([J)V

    .line 1129
    :cond_1
    new-instance v0, Lcom/xueqiu/android/message/a/a$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/message/a/a$1;-><init>(Lcom/xueqiu/android/message/a/a;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 85
    iput-object v1, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    .line 86
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/a;->a()V

    .line 87
    invoke-virtual {p0}, Lcom/xueqiu/android/message/a/a;->notifyDataSetInvalidated()V

    .line 89
    :cond_2
    return-void
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 122
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/message/a/a;->a(J)Z

    move-result v0

    return v0
.end method

.method public final addMember(I)Lcom/xueqiu/android/community/model/User;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 212
    iget-object v1, p0, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    return-object v0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getHeaderId(I)J
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 338
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 339
    invoke-static {v0}, Lcom/xueqiu/android/message/a/a;->b(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const-wide/16 v0, 0x23

    .line 342
    :goto_0
    return-wide v0

    :cond_0
    int-to-long v0, v0

    goto :goto_0
.end method

.method public final getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    if-nez p2, :cond_0

    .line 316
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f0300cc

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 317
    invoke-static {p2}, Lcom/xueqiu/android/message/a/b;->a(Landroid/view/View;)Lcom/xueqiu/android/message/a/b;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 319
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/b;

    .line 320
    iget-object v1, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/User;

    .line 321
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/xueqiu/android/message/a/a;->b(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    const-string v1, "#"

    .line 325
    :cond_1
    iget-object v0, v0, Lcom/xueqiu/android/message/a/b;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 328
    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :goto_0
    return-object p2

    .line 330
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    if-ltz p1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 248
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getPositionForSection(I)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 290
    :goto_0
    if-ltz p1, :cond_2

    move v1, v2

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 293
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    iget-object v3, p0, Lcom/xueqiu/android/message/a/a;->i:[Ljava/lang/Character;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    if-ne v0, v3, :cond_0

    .line 294
    const-string v0, "Select"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selection: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_2
    return v1

    .line 291
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 290
    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 300
    goto :goto_2
.end method

.method public final getSectionForPosition(I)I
    .locals 2

    .prologue
    .line 305
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/message/a/a;->h:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 306
    iget-object v1, p0, Lcom/xueqiu/android/message/a/a;->h:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_0

    .line 307
    add-int/lit8 v0, v0, -0x1

    .line 310
    :goto_1
    return v0

    .line 305
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->h:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->i:[Ljava/lang/Character;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const v7, 0x7f070080

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 253
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a;->j:Landroid/view/LayoutInflater;

    const v1, 0x7f030173

    invoke-virtual {v0, v1, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1371
    new-instance v1, Lcom/xueqiu/android/message/a/c;

    invoke-direct {v1}, Lcom/xueqiu/android/message/a/c;-><init>()V

    .line 1372
    const v0, 0x7f0e056e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/c;->a:Landroid/widget/CheckBox;

    .line 1373
    const v0, 0x7f0e0572

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/c;->b:Landroid/widget/ImageView;

    .line 1374
    const v0, 0x7f0e0568

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/c;->c:Landroid/widget/ImageView;

    .line 1375
    const v0, 0x7f0e01f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/c;->d:Landroid/widget/TextView;

    .line 1376
    const v0, 0x7f0e01f9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/c;->e:Landroid/widget/TextView;

    .line 1377
    const v0, 0x7f0e0209

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/c;->f:Landroid/widget/TextView;

    .line 1378
    const v0, 0x7f0e01d1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/xueqiu/android/message/a/c;->g:Landroid/widget/ImageView;

    .line 1379
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v1, Lcom/xueqiu/android/message/a/c;->h:Landroid/content/Context;

    .line 256
    iget-boolean v0, p0, Lcom/xueqiu/android/message/a/a;->d:Z

    if-eqz v0, :cond_8

    .line 257
    iget-object v0, v1, Lcom/xueqiu/android/message/a/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 261
    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 263
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/a/c;

    .line 264
    iget-object v1, p0, Lcom/xueqiu/android/message/a/a;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xueqiu/android/community/model/User;

    .line 265
    iget-object v2, p0, Lcom/xueqiu/android/message/a/a;->f:Lcom/d/a/b/f;

    .line 1384
    iget-object v3, v0, Lcom/xueqiu/android/message/a/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v3, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1385
    iget-object v3, v0, Lcom/xueqiu/android/message/a/c;->d:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1386
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getGender()Lcom/xueqiu/android/community/model/User$Gender;

    move-result-object v3

    sget-object v4, Lcom/xueqiu/android/community/model/User$Gender;->FEMALE:Lcom/xueqiu/android/community/model/User$Gender;

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/model/User$Gender;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1387
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/xueqiu/android/message/a/c;->c:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/xueqiu/android/message/a/c;->j:Lcom/d/a/b/d;

    new-instance v6, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v6}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    .line 1391
    :goto_1
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1392
    iget-object v2, v0, Lcom/xueqiu/android/message/a/c;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\uff09"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    iget-object v2, v0, Lcom/xueqiu/android/message/a/c;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1401
    :goto_2
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 1402
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getVerifiedDescription()Ljava/lang/String;

    move-result-object v2

    .line 1408
    :goto_3
    :try_start_0
    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1413
    :goto_4
    iget-object v3, v0, Lcom/xueqiu/android/message/a/c;->h:Landroid/content/Context;

    .line 1414
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_6

    .line 1415
    :cond_2
    const-string v2, ""

    .line 1416
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0702a0

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1417
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1418
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f07029f

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1420
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProvince()Ljava/lang/String;

    move-result-object v2

    .line 1422
    :cond_3
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f07007e

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1423
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070081

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1424
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1427
    :cond_4
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 1428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1430
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v4, 0x7f070565

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 1431
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getStatusesCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    .line 1432
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getFollowersCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 1433
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getFriendsCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1430
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1437
    :cond_6
    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 1438
    iget-object v3, v0, Lcom/xueqiu/android/message/a/c;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1443
    :goto_5
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->isVerified()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1444
    iget-object v2, v0, Lcom/xueqiu/android/message/a/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1445
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getVerifyType()Lcom/xueqiu/android/community/model/UserVerifyType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/community/model/UserVerifyType;->iconResId()I

    move-result v2

    .line 1446
    iget-object v3, v0, Lcom/xueqiu/android/message/a/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 266
    :goto_6
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/xueqiu/android/message/a/a;->a(J)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 267
    iget-object v1, v0, Lcom/xueqiu/android/message/a/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 268
    iget-object v0, v0, Lcom/xueqiu/android/message/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    :cond_7
    :goto_7
    return-object p2

    .line 259
    :cond_8
    iget-object v0, v1, Lcom/xueqiu/android/message/a/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 1389
    :cond_9
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getProfileImageUrl()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/xueqiu/android/message/a/c;->c:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/xueqiu/android/message/a/c;->i:Lcom/d/a/b/d;

    new-instance v6, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v6}, Lcom/xueqiu/android/base/util/o;-><init>()V

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto/16 :goto_1

    .line 1395
    :cond_a
    iget-object v2, v0, Lcom/xueqiu/android/message/a/c;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1404
    :cond_b
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_3

    .line 1440
    :cond_c
    iget-object v2, v0, Lcom/xueqiu/android/message/a/c;->f:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 1448
    :cond_d
    iget-object v2, v0, Lcom/xueqiu/android/message/a/c;->g:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 269
    :cond_e
    iget-boolean v2, p0, Lcom/xueqiu/android/message/a/a;->d:Z

    if-eqz v2, :cond_7

    .line 270
    iget-object v2, v0, Lcom/xueqiu/android/message/a/c;->a:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/xueqiu/android/message/a/a;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 271
    iget-object v1, v0, Lcom/xueqiu/android/message/a/c;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 272
    iget-object v0, v0, Lcom/xueqiu/android/message/a/c;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 1410
    :catch_0
    move-exception v3

    goto/16 :goto_4
.end method

.method public final isEnabled(I)Z
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/message/a/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
