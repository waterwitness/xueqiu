.class public Lcom/xueqiu/android/community/RichTextActivity;
.super Lcom/xueqiu/android/common/b;
.source "RichTextActivity.java"


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field j:Z

.field private p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    sput-object v0, Lcom/xueqiu/android/community/RichTextActivity;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/RichTextActivity;)Lcom/xueqiu/android/community/widget/SNBTextEditor;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    return-object v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/RichTextActivity;)V
    .locals 3

    .prologue
    .line 8172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8173
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 8174
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/RichTextActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    return-void
.end method

.method static synthetic c(Lcom/xueqiu/android/community/RichTextActivity;)V
    .locals 4

    .prologue
    .line 36
    .line 8181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".JPEG"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->s:Ljava/lang/String;

    .line 8182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8183
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/xueqiu/android/community/RichTextActivity;->k:Ljava/lang/String;

    iget-object v3, p0, Lcom/xueqiu/android/community/RichTextActivity;->s:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 8184
    const-string v2, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8185
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/community/RichTextActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 36
    return-void
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/xueqiu/android/community/RichTextActivity;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 191
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 192
    packed-switch p1, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    return-void

    .line 195
    :pswitch_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v6, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 2275
    if-nez v1, :cond_2

    .line 2480
    :cond_1
    :goto_1
    const-string v0, ""

    invoke-virtual {v6, v3, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2279
    :cond_2
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 2281
    if-nez v0, :cond_3

    .line 2282
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2283
    :cond_3
    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2284
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 2285
    :cond_4
    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2286
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->e()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2288
    if-eqz v0, :cond_1

    .line 2289
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2290
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 2291
    if-ltz v1, :cond_5

    .line 2292
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2295
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 201
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->s:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/xueqiu/android/community/RichTextActivity;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/community/RichTextActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3480
    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iput-object v3, p0, Lcom/xueqiu/android/community/RichTextActivity;->s:Ljava/lang/String;

    goto/16 :goto_0

    .line 208
    :pswitch_2
    const-string v0, "extra_stock"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/Stock;

    .line 209
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v2, "$%s(%s)$"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/model/Stock;->getCode()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :pswitch_3
    const-string v0, "extra_select"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    iget-object v1, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    .line 3786
    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a()Ljava/lang/String;

    move-result-object v1

    .line 4197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 3786
    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 5197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 3786
    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 226
    :goto_0
    if-nez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b()V

    .line 228
    invoke-virtual {p0}, Lcom/xueqiu/android/community/RichTextActivity;->finish()V

    .line 247
    :goto_1
    return-void

    .line 3786
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 230
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f07012b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070070

    .line 231
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/RichTextActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070341

    .line 232
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/RichTextActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/RichTextActivity$6;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/RichTextActivity$6;-><init>(Lcom/xueqiu/android/community/RichTextActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070087

    new-instance v2, Lcom/xueqiu/android/community/RichTextActivity$5;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/RichTextActivity$5;-><init>(Lcom/xueqiu/android/community/RichTextActivity;)V

    .line 239
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070453

    .line 245
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/RichTextActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 1066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/a/a;->d()V

    .line 53
    const v0, 0x7f030092

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RichTextActivity;->setContentView(I)V

    .line 2060
    const v0, 0x7f0e0274

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RichTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iput-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    .line 2061
    const v0, 0x7f0e0273

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RichTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->q:Landroid/widget/TextView;

    .line 2062
    const v0, 0x7f0e0272

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/RichTextActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->r:Landroid/widget/TextView;

    .line 2064
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    new-instance v1, Lcom/xueqiu/android/community/RichTextActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/RichTextActivity$1;-><init>(Lcom/xueqiu/android/community/RichTextActivity;)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->setInputListener(Lcom/xueqiu/android/community/widget/h;)V

    .line 2127
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->r:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/community/RichTextActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/RichTextActivity$2;-><init>(Lcom/xueqiu/android/community/RichTextActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2134
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->q:Landroid/widget/TextView;

    new-instance v1, Lcom/xueqiu/android/community/RichTextActivity$3;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/RichTextActivity$3;-><init>(Lcom/xueqiu/android/community/RichTextActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method protected onPause()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v1, 0x1

    const/4 v12, 0x0

    const/4 v4, 0x0

    .line 253
    iget-boolean v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->j:Z

    if-eqz v0, :cond_7

    .line 254
    iget-object v9, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    .line 5696
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 5697
    iget-object v0, v9, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v11

    .line 5698
    if-lez v11, :cond_0

    .line 5699
    iget-object v0, v9, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5700
    const v2, 0x7f0e0283

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 5701
    invoke-virtual {v9}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "rich_text_title_draft"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move v8, v1

    .line 5705
    :goto_0
    if-ge v8, v11, :cond_5

    .line 5706
    iget-object v0, v9, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5707
    instance-of v2, v0, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 5708
    check-cast v2, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 5709
    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 6197
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 5709
    if-nez v0, :cond_1

    .line 7041
    iget-boolean v0, v2, Lcom/xueqiu/android/community/widget/SNBRichEditText;->c:Z

    .line 5713
    if-eqz v0, :cond_2

    .line 5714
    new-instance v0, Lcom/xueqiu/android/community/widget/g;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getHtmlText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/community/widget/g;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 5718
    :goto_1
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5705
    :cond_1
    :goto_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 5716
    :cond_2
    new-instance v0, Lcom/xueqiu/android/community/widget/g;

    invoke-virtual {v2}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getHtmlText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move v3, v12

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/xueqiu/android/community/widget/g;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5719
    :cond_3
    instance-of v2, v0, Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_1

    .line 5720
    const v2, 0x7f0e0275

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/xueqiu/android/community/widget/SNBRichImageView;

    .line 5721
    const v2, 0x7f0e0276

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 5723
    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 7197
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 5723
    if-nez v2, :cond_4

    .line 5724
    new-instance v2, Lcom/xueqiu/android/community/widget/g;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->getImageUrl()Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBRichEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move v3, v13

    move v5, v12

    invoke-direct/range {v2 .. v7}, Lcom/xueqiu/android/community/widget/g;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 5728
    :goto_3
    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 5726
    :cond_4
    new-instance v2, Lcom/xueqiu/android/community/widget/g;

    invoke-virtual {v3}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->getImagePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/xueqiu/android/community/widget/SNBRichImageView;->getImageUrl()Ljava/lang/String;

    move v3, v13

    move v5, v12

    move-object v7, v4

    invoke-direct/range {v2 .. v7}, Lcom/xueqiu/android/community/widget/g;-><init>(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 5731
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 5732
    invoke-virtual {v9}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rich_text_draft"

    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_6
    :goto_4
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onPause()V

    .line 259
    return-void

    .line 256
    :cond_7
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity;->p:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b()V

    goto :goto_4
.end method
