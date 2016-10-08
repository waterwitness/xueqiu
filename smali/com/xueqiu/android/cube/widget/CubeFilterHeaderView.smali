.class public Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;
.super Landroid/widget/LinearLayout;
.source "CubeFilterHeaderView.java"


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/xueqiu/android/cube/widget/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b:Ljava/util/Map;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->c:Lcom/xueqiu/android/cube/widget/b;

    .line 53
    invoke-direct {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b()V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a:Ljava/util/Map;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b:Ljava/util/Map;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->c:Lcom/xueqiu/android/cube/widget/b;

    .line 58
    invoke-direct {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b()V

    .line 59
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->setSelectedItem(Landroid/widget/TextView;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;I)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/widget/a;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x10

    .line 188
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0300f2

    const v3, 0x1020014

    invoke-direct {v1, v0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 189
    invoke-virtual {v1, p2}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 190
    const v0, 0x7f0300f0

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 192
    new-instance v2, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x10102d7

    invoke-direct {v2, v0, v3, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 194
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/ay;->c(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setDropDownWidth(I)V

    .line 198
    :cond_0
    invoke-virtual {v2, p1}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 200
    invoke-virtual {v2, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 202
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_1

    .line 203
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/widget/a;

    iget-object v0, v0, Lcom/xueqiu/android/cube/widget/a;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_1
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0148

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setBackgroundColor(I)V

    .line 206
    new-instance v0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;

    invoke-direct {v0, p0, v2, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$2;-><init>(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;Landroid/widget/Spinner;Landroid/widget/ArrayAdapter;)V

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 223
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_2

    .line 224
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    :cond_2
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->addView(Landroid/view/View;)V

    .line 228
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/widget/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move v2, v3

    .line 136
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 137
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/widget/a;

    .line 138
    const v1, 0x7f0300f1

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 139
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 140
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v5, v0, Lcom/xueqiu/android/cube/widget/a;->label:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, v0, Lcom/xueqiu/android/cube/widget/a;->value:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 143
    new-instance v0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;

    invoke-direct {v0, p0, p2, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView$1;-><init>(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;Ljava/lang/String;Landroid/widget/TextView;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->addView(Landroid/view/View;)V

    .line 161
    if-nez v2, :cond_0

    .line 162
    invoke-direct {p0, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->setSelectedItem(Landroid/widget/TextView;)V

    .line 165
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v2, v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a()V

    .line 136
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 169
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 170
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/widget/a;

    iget-object v0, v0, Lcom/xueqiu/android/cube/widget/a;->value:Ljava/lang/String;

    invoke-direct {p0, p2, v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Lcom/xueqiu/android/cube/widget/b;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->c:Lcom/xueqiu/android/cube/widget/b;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->setOrientation(I)V

    .line 63
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->setBackgroundColor(I)V

    .line 64
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b:Ljava/util/Map;

    return-object v0
.end method

.method private setSelectedItem(Landroid/widget/TextView;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 176
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 177
    invoke-virtual {p1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    move v1, v2

    .line 178
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 180
    instance-of v4, v3, Landroid/widget/TextView;

    if-eqz v4, :cond_0

    if-eq v3, p1, :cond_0

    .line 181
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    .line 178
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 236
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 237
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 238
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x7f080032

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f080031

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    const/16 v1, 0x10

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 240
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->addView(Landroid/view/View;)V

    .line 243
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 103
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v5

    .line 105
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 107
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 109
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 111
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 113
    new-instance v9, Lcom/xueqiu/android/cube/widget/a;

    invoke-direct {v9, v5}, Lcom/xueqiu/android/cube/widget/a;-><init>(B)V

    .line 114
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v9, Lcom/xueqiu/android/cube/widget/a;->label:Ljava/lang/String;

    .line 115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v9, Lcom/xueqiu/android/cube/widget/a;->value:Ljava/lang/String;

    .line 116
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 119
    invoke-direct {p0, v7, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 126
    :cond_1
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    .line 127
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v7, v0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Ljava/lang/String;Ljava/util/List;I)V

    .line 122
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v4, v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a()V

    goto :goto_2

    .line 128
    :cond_3
    return-void
.end method

.method public final a(Lorg/json/JSONArray;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 76
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 78
    const-string v3, "param"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    const-string v4, "filter_values"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 80
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v1

    .line 82
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 83
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 84
    new-instance v7, Lcom/xueqiu/android/cube/widget/a;

    invoke-direct {v7, v1}, Lcom/xueqiu/android/cube/widget/a;-><init>(B)V

    .line 85
    const-string v8, "name"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/xueqiu/android/cube/widget/a;->label:Ljava/lang/String;

    .line 86
    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v7, Lcom/xueqiu/android/cube/widget/a;->value:Ljava/lang/String;

    .line 87
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 90
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    .line 91
    invoke-direct {p0, v5, v3}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 100
    :cond_1
    return-void

    .line 1232
    :cond_2
    invoke-direct {p0, v3, v5, v1}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a(Ljava/lang/String;Ljava/util/List;I)V

    .line 95
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a()V

    .line 76
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFilterConditions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->a:Ljava/util/Map;

    return-object v0
.end method

.method public getSiftParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->b:Ljava/util/Map;

    return-object v0
.end method

.method public setOnFilterChangedListener(Lcom/xueqiu/android/cube/widget/b;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/xueqiu/android/cube/widget/CubeFilterHeaderView;->c:Lcom/xueqiu/android/cube/widget/b;

    .line 294
    return-void
.end method
