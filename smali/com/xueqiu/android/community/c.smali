.class final Lcom/xueqiu/android/community/c;
.super Landroid/support/v4/widget/a;
.source "DraftBoxActivity.java"


# instance fields
.field final synthetic j:Lcom/xueqiu/android/community/DraftBoxActivity;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/DraftBoxActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/xueqiu/android/community/c;->j:Lcom/xueqiu/android/community/DraftBoxActivity;

    .line 204
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 205
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 263
    const v0, 0x7f030077

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 264
    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 16

    .prologue
    .line 209
    const v2, 0x7f0e020c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 210
    const v3, 0x7f0e020d

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 211
    const v4, 0x7f0e020e

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 212
    const v5, 0x7f0e020f

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 214
    const-string v6, "title"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 215
    const-string v6, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 216
    const-string v6, "text"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 217
    const-string v6, "img_name"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 218
    const-string v6, "type"

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 219
    new-instance v6, Ljava/util/Date;

    const-string v7, "timestamp"

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-direct {v6, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-static {v6}, Lcom/xueqiu/android/base/util/h;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    .line 221
    const-string v6, ""

    .line 223
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 224
    const-string v14, "draft_text"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 229
    :goto_0
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/xueqiu/android/community/c;->j:Lcom/xueqiu/android/community/DraftBoxActivity;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/DraftBoxActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08011a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v2}, Lcom/xueqiu/android/base/util/ad;->a(Ljava/lang/String;II)Ljava/lang/ref/WeakReference;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_0

    .line 237
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 243
    :cond_0
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v3, "draft_text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "draft_text"

    .line 245
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :cond_2
    :goto_1
    new-instance v2, Lcom/xueqiu/android/community/model/Draft;

    invoke-direct {v2}, Lcom/xueqiu/android/community/model/Draft;-><init>()V

    .line 253
    invoke-virtual {v2, v9}, Lcom/xueqiu/android/community/model/Draft;->setId(I)V

    .line 254
    invoke-virtual {v2, v8}, Lcom/xueqiu/android/community/model/Draft;->setTitle(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v2, v10}, Lcom/xueqiu/android/community/model/Draft;->setText(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v2, v11}, Lcom/xueqiu/android/community/model/Draft;->setImageName(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v2, v12}, Lcom/xueqiu/android/community/model/Draft;->setType(I)V

    .line 258
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 259
    return-void

    .line 226
    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 249
    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
