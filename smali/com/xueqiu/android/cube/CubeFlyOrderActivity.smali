.class public Lcom/xueqiu/android/cube/CubeFlyOrderActivity;
.super Lcom/xueqiu/android/common/b;
.source "CubeFlyOrderActivity.java"


# instance fields
.field private A:J

.field private B:Ljava/lang/String;

.field private C:Lcom/xueqiu/android/cube/model/Cube;

.field private D:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/f;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private F:I

.field private G:I

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:Lcom/xueqiu/android/trade/model/TradeAccount;

.field private M:Z

.field private N:Landroid/view/View$OnClickListener;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/LinearLayout;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/Button;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/RelativeLayout;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 110
    iput-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->E:Ljava/util/ArrayList;

    .line 114
    iput v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->F:I

    .line 116
    iput v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->H:Z

    .line 121
    iput-boolean v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->I:Z

    .line 124
    iput-boolean v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->J:Z

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->K:Ljava/lang/String;

    .line 128
    iput-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 174
    iput-boolean v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->M:Z

    .line 175
    new-instance v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->N:Landroid/view/View$OnClickListener;

    .line 902
    return-void
.end method

.method private static a(JD)D
    .locals 6

    .prologue
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    .line 394
    long-to-double v0, p0

    const-wide v4, 0x3f33a92a30553261L    # 3.0E-4

    mul-double/2addr v0, v4

    mul-double/2addr v0, p2

    .line 395
    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 72
    .line 13841
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 13842
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 13843
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 13844
    new-instance v3, Lcom/xueqiu/android/cube/g;

    invoke-direct {v3}, Lcom/xueqiu/android/cube/g;-><init>()V

    .line 13845
    const-string v4, "result_code"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xueqiu/android/cube/g;->resultCode:Ljava/lang/String;

    .line 13846
    const-string v4, "msg"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xueqiu/android/cube/g;->msg:Ljava/lang/String;

    .line 13847
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v5, Lcom/xueqiu/android/cube/e;

    invoke-virtual {v4, v0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/e;

    iput-object v0, v3, Lcom/xueqiu/android/cube/g;->order:Lcom/xueqiu/android/cube/e;

    .line 13848
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13842
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_0
    return-object v2
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/xueqiu/android/cube/f;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/cube/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 826
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 827
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/f;

    .line 828
    new-instance v3, Lcom/xueqiu/android/cube/e;

    invoke-direct {v3}, Lcom/xueqiu/android/cube/e;-><init>()V

    .line 829
    iget-object v4, v0, Lcom/xueqiu/android/cube/f;->stockName:Ljava/lang/String;

    iput-object v4, v3, Lcom/xueqiu/android/cube/e;->sname:Ljava/lang/String;

    .line 830
    iget-object v4, v0, Lcom/xueqiu/android/cube/f;->action:Ljava/lang/String;

    iput-object v4, v3, Lcom/xueqiu/android/cube/e;->action:Ljava/lang/String;

    .line 831
    iget-object v4, v0, Lcom/xueqiu/android/cube/f;->stockSymbol:Ljava/lang/String;

    iput-object v4, v3, Lcom/xueqiu/android/cube/e;->scode:Ljava/lang/String;

    .line 832
    iget-wide v4, v0, Lcom/xueqiu/android/cube/f;->price:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/xueqiu/android/cube/e;->price:Ljava/lang/String;

    .line 833
    iget-wide v4, v0, Lcom/xueqiu/android/cube/f;->volume:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/xueqiu/android/cube/e;->amount:Ljava/lang/String;

    .line 834
    iput-object p1, v3, Lcom/xueqiu/android/cube/e;->otype:Ljava/lang/String;

    .line 835
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 837
    :cond_0
    return-object v1
.end method

.method private a(D)V
    .locals 7

    .prologue
    .line 4180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 273
    iget-wide v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->A:J

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->B:Ljava/lang/String;

    new-instance v6, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$12;

    invoke-direct {v6, p0, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$12;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lcom/xueqiu/android/base/b/q;)V

    .line 5010
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->l:Lcom/xueqiu/android/base/b/c;

    move-wide v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/c;->a(JLjava/lang/String;DLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 286
    return-void
.end method

.method static synthetic a(Landroid/widget/Button;ZZ)V
    .locals 3

    .prologue
    const v2, 0x7f0d0148

    const v1, 0x7f0d010c

    .line 72
    .line 7584
    if-eqz p0, :cond_0

    .line 7587
    if-eqz p2, :cond_2

    .line 7588
    if-eqz p1, :cond_1

    .line 7589
    const v0, 0x7f0202ea

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 7590
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 7598
    :cond_0
    :goto_0
    return-void

    .line 7592
    :cond_1
    const v0, 0x7f0202e9

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 7593
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 7596
    :cond_2
    if-eqz p1, :cond_3

    .line 7597
    const v0, 0x7f02038a

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 7598
    invoke-static {v2}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 7600
    :cond_3
    const v0, 0x7f020389

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 7601
    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;D)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lcom/xueqiu/android/cube/model/Cube;)V
    .locals 5

    .prologue
    .line 10291
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10293
    const-string v0, "#4486ed"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 10297
    :goto_0
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v2, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 10298
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 10299
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10300
    const v0, 0x7f0e027d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 10301
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->j:Landroid/widget/TextView;

    const-string v1, "%s\uff08%s\uff09"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10302
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getMonthlyGain()Ljava/lang/Double;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void

    .line 10295
    :cond_0
    invoke-virtual {p1}, Lcom/xueqiu/android/cube/model/Cube;->getStyle()Lcom/xueqiu/android/cube/model/Style;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Style;->getColor0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lorg/json/JSONObject;)V
    .locals 17

    .prologue
    .line 10336
    const-wide/16 v6, 0x0

    .line 10337
    const-wide/16 v4, 0x0

    .line 10338
    const-string v2, "order_plan"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 10340
    :try_start_0
    const-string v2, "order_plan"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 10341
    const-string v2, "list"

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 10342
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 10343
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->F:I

    .line 10344
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    .line 10345
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v8, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$13;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$13;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 10346
    invoke-virtual {v8}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$13;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    .line 10345
    invoke-virtual {v3, v2, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 10347
    if-eqz v2, :cond_4

    .line 10348
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->F:I

    .line 10349
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    .line 10351
    const/4 v3, 0x0

    .line 10352
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/f;

    .line 10353
    iget-wide v10, v2, Lcom/xueqiu/android/cube/f;->volume:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_0

    .line 10354
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v10, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10355
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    .line 10357
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10381
    :catch_0
    move-exception v2

    move-object/from16 v16, v2

    move-wide v2, v4

    move-object/from16 v4, v16

    .line 10382
    :goto_1
    const-string v5, ""

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v6

    .line 10385
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->p:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->F:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->b(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10386
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->w:Landroid/widget/TextView;

    const-string v7, "\u00a5 %.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10387
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->x:Landroid/widget/TextView;

    const-string v5, "\u53c2\u8003\u624b\u7eed\u8d39\u00a5 %.2f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10388
    invoke-direct/range {p0 .. p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->j()V

    .line 72
    return-void

    .line 10360
    :cond_1
    :try_start_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 10361
    const/4 v2, 0x0

    move v8, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v8, v2, :cond_3

    .line 10362
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xueqiu/android/cube/f;

    .line 10363
    iget-wide v12, v2, Lcom/xueqiu/android/cube/f;->volume:J

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-lez v3, :cond_2

    .line 10364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->E:Ljava/util/ArrayList;

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v3, v8, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 10365
    move-object/from16 v0, p0

    iget v3, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    .line 10366
    iget-wide v12, v2, Lcom/xueqiu/android/cube/f;->volume:J

    iget-wide v14, v2, Lcom/xueqiu/android/cube/f;->price:D

    invoke-static {v12, v13, v14, v15}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(JD)D

    move-result-wide v12

    add-double/2addr v4, v12

    .line 10367
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide v2, v4

    .line 10361
    :goto_4
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-wide v4, v2

    goto :goto_3

    .line 10369
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->E:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move-wide v2, v4

    goto :goto_4

    .line 10372
    :cond_3
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$14;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 10373
    invoke-virtual {v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 10372
    invoke-virtual {v2, v10, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->K:Ljava/lang/String;

    .line 10374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->F:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    if-ne v2, v3, :cond_4

    .line 10375
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->J:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    move-wide v2, v4

    .line 10380
    :try_start_2
    const-string v4, "cost"

    invoke-virtual {v9, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide v4

    goto/16 :goto_2

    .line 10381
    :catch_1
    move-exception v4

    goto/16 :goto_1

    :cond_5
    move-wide v2, v4

    move-wide v4, v6

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;)V
    .locals 1

    .prologue
    .line 786
    new-instance v0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$10;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$10;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    invoke-static {p1, p2, p0, v0}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;Lcom/xueqiu/android/common/b;Lcom/xueqiu/android/trade/d;)Lcom/xueqiu/android/trade/c;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/c;->a()V

    .line 797
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->M:Z

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->I:Z

    return p1
.end method

.method static synthetic a(Ljava/util/ArrayList;)Z
    .locals 3

    .prologue
    .line 72
    .line 14815
    const/4 v1, 0x1

    .line 14816
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/g;

    .line 14817
    iget-object v0, v0, Lcom/xueqiu/android/cube/g;->resultCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/xueqiu/android/trade/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 14818
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lcom/xueqiu/android/cube/model/Cube;)Lcom/xueqiu/android/cube/model/Cube;
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->C:Lcom/xueqiu/android/cube/model/Cube;

    return-object p1
.end method

.method private b(II)Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 418
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 419
    iget-boolean v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->H:Z

    if-eqz v1, :cond_1

    .line 420
    const-string v1, "\u5e02\u4ef7\u4e70\u5165"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 424
    :goto_0
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    const-string v2, "#ff7700"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 425
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 426
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 427
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 428
    const-string v1, "\u53ea\u80a1\u7968"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 429
    if-le p1, p2, :cond_0

    .line 430
    const-string v1, "\uff0c\u5ffd\u7565"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    sub-int v2, p1, p2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    const-string v2, "\u53ea"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 432
    :cond_0
    return-object v0

    .line 422
    :cond_1
    const-string v1, "\u9650\u4ef7\u4e70\u5165"

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->I:Z

    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->H:Z

    return p1
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    .line 6800
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->p:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 6801
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->I:Z

    if-eqz v0, :cond_0

    .line 6802
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f02020f

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_0
    return-void

    .line 6804
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->p:Landroid/widget/TextView;

    const v1, 0x7f02020e

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)Z
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->M:Z

    return p1
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->j()V

    return-void
.end method

.method static synthetic d(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 72
    .line 10707
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xueqiu/android/trade/c;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 10708
    const-string v0, "70005"

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Ljava/lang/String;Lcom/xueqiu/android/trade/model/TradeAccount;)V

    .line 10779
    :goto_0
    return-void

    .line 10712
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 10713
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 10714
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/f;

    iget-wide v4, v0, Lcom/xueqiu/android/cube/f;->volume:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 10715
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10713
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 10719
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 10721
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->H:Z

    if-eqz v0, :cond_3

    const-string v0, "MKT"

    :goto_2
    invoke-static {v3, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 10722
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$8;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$8;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 10723
    invoke-virtual {v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$8;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 10722
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    .line 11180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 10724
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTid()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v2}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v2

    .line 12069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v3

    .line 10725
    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v4}, Lcom/xueqiu/android/trade/model/TradeAccount;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/base/t;->a(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/BrokerAccountToken;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/trade/model/BrokerAccountToken;->getWriteToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->B:Ljava/lang/String;

    new-instance v6, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;

    invoke-direct {v6, p0, p0, v5}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$9;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lcom/xueqiu/android/base/b/q;Ljava/lang/String;)V

    .line 13014
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->m:Lcom/xueqiu/android/base/b/am;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cube."

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/am;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    goto/16 :goto_0

    .line 10721
    :cond_3
    const-string v0, "LMT"

    goto :goto_2

    .line 10780
    :cond_4
    const v0, 0x7f0700db

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 10781
    iput-boolean v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->M:Z

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->r:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic f(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->s:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic g(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const-wide/16 v0, 0x0

    const/4 v7, 0x0

    .line 8399
    .line 8401
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 8402
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-wide v2, v0

    move-wide v4, v0

    move v6, v7

    .line 8405
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_2

    .line 8406
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/f;

    .line 8407
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v8, v0, Lcom/xueqiu/android/cube/f;->volume:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_3

    .line 8408
    iget-wide v8, v0, Lcom/xueqiu/android/cube/f;->price:D

    iget-wide v10, v0, Lcom/xueqiu/android/cube/f;->volume:J

    long-to-double v10, v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 8409
    iget-wide v8, v0, Lcom/xueqiu/android/cube/f;->volume:J

    iget-wide v0, v0, Lcom/xueqiu/android/cube/f;->price:D

    invoke-static {v8, v9, v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(JD)D

    move-result-wide v0

    add-double/2addr v2, v0

    move-wide v0, v2

    move-wide v2, v4

    .line 8405
    :goto_2
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move-wide v4, v2

    move-wide v2, v0

    goto :goto_1

    .line 8412
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->p:Landroid/widget/TextView;

    iget v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->F:I

    iget v6, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    invoke-direct {p0, v1, v6}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->b(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8413
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->w:Landroid/widget/TextView;

    const-string v1, "\u00a5 %.2f"

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8414
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->x:Landroid/widget/TextView;

    const-string v1, "\u53c2\u8003\u624b\u7eed\u8d39\u00a5 %.2f"

    new-array v4, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    move-wide v0, v2

    move-wide v2, v4

    goto :goto_2
.end method

.method static synthetic h(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V
    .locals 11

    .prologue
    const/16 v10, 0x57a

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 8644
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 8645
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 8646
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/f;

    iget-wide v4, v0, Lcom/xueqiu/android/cube/f;->volume:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 8647
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8645
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 8651
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->K:Ljava/lang/String;

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v1

    new-instance v4, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$5;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$5;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 8652
    invoke-virtual {v4}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 8651
    invoke-virtual {v1, v3, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->H:Z

    if-eqz v0, :cond_2

    .line 8653
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v10, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 8657
    :goto_1
    const-string v1, "symbol"

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 8658
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 8661
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 8662
    const v0, 0x7f0700db

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 8669
    :goto_2
    return-void

    .line 8655
    :cond_2
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x7

    invoke-direct {v0, v10, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    goto :goto_1

    .line 8667
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_4

    .line 8668
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->k()V

    goto :goto_2

    .line 8672
    :cond_4
    const-string v1, "\u7ec4\u5408\uff1a%s\n\u8d26\u6237\uff1a%s\n\u4e70\u5165\uff1a\n"

    new-array v4, v9, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->C:Lcom/xueqiu/android/cube/model/Cube;

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_3
    aput-object v0, v4, v2

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8673
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/f;

    .line 8675
    iget-boolean v4, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->H:Z

    if-eqz v4, :cond_6

    .line 8676
    const-string v4, "%s %s\u80a1 \u5e02\u4ef7\n"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/xueqiu/android/cube/f;->stockName:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-wide v6, v0, Lcom/xueqiu/android/cube/f;->volume:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 8680
    :goto_5
    const-string v4, "%s%s"

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v1, v5, v2

    aput-object v0, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 8681
    goto :goto_4

    .line 8672
    :cond_5
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->C:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 8678
    :cond_6
    const-string v4, "%s %s\u80a1 \u59d4\u6258\u4ef7 %s\n"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/xueqiu/android/cube/f;->stockName:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-wide v6, v0, Lcom/xueqiu/android/cube/f;->volume:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    iget-wide v6, v0, Lcom/xueqiu/android/cube/f;->price:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 8683
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 8684
    const v2, 0x7f0700d8

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070070

    .line 8685
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$7;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$7;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0700b1

    .line 8691
    invoke-virtual {p0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$6;

    invoke-direct {v4, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$6;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 8697
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 8698
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 8699
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2
.end method

.method static synthetic i(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V
    .locals 6

    .prologue
    .line 72
    .line 9607
    const v0, 0x7f030108

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 9608
    const v0, 0x7f0e0424

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 9609
    new-instance v2, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$2;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 9617
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9618
    const v3, 0x7f0700fd

    invoke-virtual {p0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070070

    .line 9619
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$4;

    invoke-direct {v5, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$4;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0700b1

    .line 9625
    invoke-virtual {p0, v4}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$3;

    invoke-direct {v5, p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$3;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 9636
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 9637
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 9638
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 72
    return-void
.end method

.method private j()V
    .locals 14

    .prologue
    const/16 v13, 0x11

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/16 v10, 0x8

    const/4 v4, 0x0

    .line 446
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 571
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->I:Z

    if-nez v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 458
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v3, v4

    .line 459
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 460
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/f;

    .line 463
    iget-wide v6, v0, Lcom/xueqiu/android/cube/f;->volume:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_3

    iget-boolean v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->J:Z

    if-eqz v1, :cond_4

    .line 464
    :cond_3
    const v1, 0x7f030107

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 465
    const v1, 0x7f0e041f

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/xueqiu/android/cube/f;->stockName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    const v1, 0x7f0e0422

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 467
    iget-boolean v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->H:Z

    if-eqz v2, :cond_5

    .line 468
    invoke-virtual {v1, v10}, Landroid/widget/EditText;->setVisibility(I)V

    .line 469
    const v1, 0x7f0e0423

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 497
    :goto_2
    const v1, 0x7f0e041e

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 498
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->E:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 499
    const v2, 0x7f020233

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 504
    :goto_3
    new-instance v2, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$16;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 518
    const v1, 0x7f0e0421

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 519
    new-instance v2, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$17;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$17;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 540
    iget-wide v6, v0, Lcom/xueqiu/android/cube/f;->volume:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 542
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->q:Landroid/widget/LinearLayout;

    .line 5574
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 5575
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5576
    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v5}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v2, v5, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5577
    const/16 v5, 0x10

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 5578
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5579
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0d0024

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 5580
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 459
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 471
    :cond_5
    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 472
    iget-wide v6, v0, Lcom/xueqiu/android/cube/f;->price:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 473
    new-instance v2, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$15;

    invoke-direct {v2, p0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$15;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;I)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 494
    const v1, 0x7f0e0423

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 501
    :cond_6
    const v2, 0x7f020232

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 547
    :cond_7
    iget v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    iget v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->F:I

    if-eq v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->J:Z

    if-eqz v0, :cond_9

    .line 549
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->q:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto/16 :goto_0

    .line 552
    :cond_9
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 553
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v2, 0x42100000    # 36.0f

    .line 554
    invoke-static {p0, v2}, Lcom/xueqiu/android/base/util/ay;->a(Landroid/content/Context;F)F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v1, v11, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 555
    iput v13, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 556
    const-string v2, "\u67e5\u770b\u5df2\u5ffd\u7565\u7684%d\u53ea\u5c0f\u4ed3\u4f4d\u80a1\u7968"

    new-array v3, v12, [Ljava/lang/Object;

    iget v5, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->F:I

    iget v6, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 557
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 559
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    const v1, 0x7f0d0110

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 561
    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 562
    new-instance v1, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$18;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$18;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 569
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method static synthetic j(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V
    .locals 3

    .prologue
    .line 72
    .line 10239
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10242
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10243
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 10244
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 72
    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 809
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->M:Z

    .line 810
    const-string v0, "/broker/bind-list"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    .line 811
    return-void
.end method

.method static synthetic k(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->k()V

    return-void
.end method

.method static synthetic l(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->B:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V
    .locals 5

    .prologue
    const v2, 0x7f0e039b

    .line 72
    .line 10306
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->C:Lcom/xueqiu/android/cube/model/Cube;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->C:Lcom/xueqiu/android/cube/model/Cube;

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getMarket()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/as;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10307
    const-string v0, "SHEX"

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getCurrentExchangeBroker(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 10308
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_0

    .line 10309
    const-string v0, "SZEX"

    invoke-static {v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getCurrentExchangeBroker(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    .line 10313
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    if-nez v0, :cond_1

    .line 10314
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->t:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10315
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->u:Landroid/widget/TextView;

    const v1, 0x7f0700e1

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10317
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 10318
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10319
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    .line 10322
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 10323
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0d001c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 10324
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10325
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeAccount;->getTradeBroker()Lcom/xueqiu/android/trade/model/TradeBroker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/TradeBroker;->getTraderLogo()Ljava/lang/String;

    move-result-object v0

    .line 10330
    invoke-static {}, Lcom/xueqiu/android/base/util/n;->a()Lcom/d/a/b/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/d/a/b/e;->b()Lcom/d/a/b/d;

    move-result-object v1

    .line 10331
    new-instance v2, Lcom/xueqiu/android/base/util/o;

    invoke-direct {v2}, Lcom/xueqiu/android/base/util/o;-><init>()V

    .line 10332
    invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;

    move-result-object v3

    iget-object v4, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->t:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v4, v1, v2}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;Lcom/d/a/b/d;Lcom/d/a/b/f/a;)V

    goto :goto_0
.end method

.method static synthetic n(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->D:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->E:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic p(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    return v0
.end method

.method static synthetic q(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)I
    .locals 2

    .prologue
    .line 72
    iget v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->G:I

    return v0
.end method

.method static synthetic r(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->J:Z

    return v0
.end method

.method static synthetic s(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Lcom/xueqiu/android/trade/model/TradeAccount;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->L:Lcom/xueqiu/android/trade/model/TradeAccount;

    return-object v0
.end method

.method static synthetic t(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Lcom/xueqiu/android/cube/model/Cube;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->C:Lcom/xueqiu/android/cube/model/Cube;

    return-object v0
.end method

.method static synthetic u(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->K:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic v(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->H:Z

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 4

    .prologue
    .line 856
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onBackPressed()V

    .line 6053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 857
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x57a

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 859
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 133
    const v0, 0x7f0300f3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->setContentView(I)V

    .line 134
    const v0, 0x7f0700ea

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    const v0, 0x7f0e0393

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->j:Landroid/widget/TextView;

    .line 136
    const v0, 0x7f0e0395

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->k:Landroid/widget/TextView;

    .line 137
    const v0, 0x7f0e0397

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->p:Landroid/widget/TextView;

    .line 138
    const v0, 0x7f0e0398

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->q:Landroid/widget/LinearLayout;

    .line 139
    const v0, 0x7f0e039a

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->r:Landroid/widget/Button;

    .line 140
    const v0, 0x7f0e0399

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->s:Landroid/widget/Button;

    .line 141
    const v0, 0x7f0e039d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->t:Landroid/widget/ImageView;

    .line 142
    const v0, 0x7f0e039c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->u:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0e039e

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->v:Landroid/widget/RelativeLayout;

    .line 144
    const v0, 0x7f0e03a0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->w:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0e03a1

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->x:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0e03a2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->y:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->y:Landroid/widget/TextView;

    .line 1436
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1437
    const-string v2, "\u70b9\u51fb\u8d2d\u4e70\u6309\u94ae\u5373\u8868\u793a\u540c\u610f"

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1438
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#416cb2"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1439
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1440
    const-string v4, "\u300a\u6295\u8d44\u7ec4\u5408\u4e0b\u5355\u514d\u8d23\u6761\u6b3e\u300b"

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1441
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const v0, 0x7f0e03a3

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->z:Landroid/widget/Button;

    .line 150
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "take_order_id"

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->A:J

    .line 151
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "take_order_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->B:Ljava/lang/String;

    .line 154
    iget-wide v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->A:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->B:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->finish()V

    .line 162
    :goto_0
    return-void

    .line 2165
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2166
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2167
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2168
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->z:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2169
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2170
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2171
    const v0, 0x7f0e0392

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3180
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    .line 2255
    iget-wide v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->A:J

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->B:Ljava/lang/String;

    new-instance v4, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$11;

    invoke-direct {v4, p0, p0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$11;-><init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/xueqiu/android/base/b/ai;->c(JLjava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 2250
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(D)V

    goto :goto_0
.end method
