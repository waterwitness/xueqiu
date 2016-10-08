.class public final Lcom/xueqiu/android/common/a/a;
.super Lcom/xueqiu/android/common/a/m;
.source "AlphabetIndexAdapter.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/common/a/m",
        "<",
        "Ljava/lang/String;",
        "Lcom/xueqiu/android/common/model/IAlphabetSortable;",
        ">;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/model/IAlphabetSortable;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/xueqiu/android/common/a/m;-><init>(Ljava/util/List;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/xueqiu/android/common/a/a;->a:I

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/a/a;->b:Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/xueqiu/android/common/a/a;->b:Landroid/content/Context;

    .line 32
    const v0, 0x7f030198

    iput v0, p0, Lcom/xueqiu/android/common/a/a;->a:I

    .line 33
    invoke-direct {p0}, Lcom/xueqiu/android/common/a/a;->b()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/common/model/IAlphabetSortable;",
            ">;>;>;B)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/common/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 38
    return-void
.end method

.method static synthetic a(C)Z
    .locals 1

    .prologue
    .line 21
    .line 2168
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

    .line 21
    goto :goto_0
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/common/a/a;->c:Ljava/util/HashMap;

    move v1, v2

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/xueqiu/android/common/a/a;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 114
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/common/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/IAlphabetSortable;

    .line 115
    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0}, Lcom/xueqiu/android/common/model/IAlphabetSortable;->getAlphabets()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/xueqiu/android/common/model/IAlphabetSortable;->getAlphabets()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 118
    invoke-interface {v0}, Lcom/xueqiu/android/common/model/IAlphabetSortable;->getAlphabets()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_1
    iget-object v3, p0, Lcom/xueqiu/android/common/a/a;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/xueqiu/android/common/a/a;->c:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, " "

    goto :goto_1

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/common/a/a;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 128
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    new-instance v0, Lcom/xueqiu/android/common/a/a$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/a/a$1;-><init>(Lcom/xueqiu/android/common/a/a;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 153
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xueqiu/android/common/a/a;->d:[Ljava/lang/String;

    .line 154
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 155
    iget-object v3, p0, Lcom/xueqiu/android/common/a/a;->d:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 157
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(IILandroid/view/View;)Landroid/view/View;
    .locals 3

    .prologue
    .line 44
    if-nez p3, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xueqiu/android/common/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/xueqiu/android/common/a/a;->a:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 46
    new-instance v1, Lcom/xueqiu/android/common/a/b;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/common/a/b;-><init>(Lcom/xueqiu/android/common/a/a;B)V

    .line 47
    const v0, 0x7f0e0130

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/common/a/b;->a:Landroid/widget/TextView;

    .line 49
    invoke-virtual {p3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 53
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xueqiu/android/common/a/a;->a(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/model/IAlphabetSortable;

    .line 55
    iget-object v1, v1, Lcom/xueqiu/android/common/a/b;->a:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/xueqiu/android/common/model/IAlphabetSortable;->showName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-object p3

    .line 51
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/a/b;

    move-object v1, v0

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    .line 93
    if-nez p2, :cond_1

    .line 94
    new-instance v1, Lcom/xueqiu/android/common/a/c;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/common/a/c;-><init>(Lcom/xueqiu/android/common/a/a;B)V

    .line 95
    iget-object v0, p0, Lcom/xueqiu/android/common/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030197

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 96
    const v0, 0x7f0e0130

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/common/a/c;->a:Landroid/widget/TextView;

    .line 97
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1186
    :goto_0
    invoke-super {p0}, Lcom/xueqiu/android/common/a/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 102
    check-cast v0, Ljava/lang/String;

    .line 103
    if-nez v0, :cond_0

    .line 104
    const-string v0, "\u5339\u914d\u7ed3\u679c"

    .line 106
    :cond_0
    iget-object v1, v1, Lcom/xueqiu/android/common/a/c;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-object p2

    .line 99
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/a/c;

    move-object v1, v0

    goto :goto_0
.end method

.method public final getPositionForSection(I)I
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xueqiu/android/common/a/a;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/xueqiu/android/common/a/a;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/xueqiu/android/common/a/a;->d:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 64
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getSectionForPosition(I)I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public final getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/xueqiu/android/common/a/a;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/xueqiu/android/common/a/m;->notifyDataSetChanged()V

    .line 80
    invoke-direct {p0}, Lcom/xueqiu/android/common/a/a;->b()V

    .line 81
    return-void
.end method

.method public final notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/xueqiu/android/common/a/m;->notifyDataSetInvalidated()V

    .line 86
    invoke-direct {p0}, Lcom/xueqiu/android/common/a/a;->b()V

    .line 87
    return-void
.end method
