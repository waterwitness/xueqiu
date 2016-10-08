.class public Lcom/kwlopen/sdk/activity/SelectPicActivity;
.super Landroid/app/Activity;
.source "SelectPicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static IMAGE_PATH:Ljava/lang/String; = null

.field public static final KEY_PHOTO_PATH:Ljava/lang/String; = "photo_path"

.field public static final SELECT_PIC_BY_CLIP_PHOTO:I = 0x3

.field public static final SELECT_PIC_BY_PICK_PHOTO:I = 0x2

.field public static final SELECT_PIC_BY_TACK_PHOTO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SelectPicActivity"


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private dialogLayout:Landroid/widget/LinearLayout;

.field private handler:Landroid/os/Handler;

.field private lastIntent:Landroid/content/Intent;

.field private photoUri:Landroid/net/Uri;

.field private picPath:Ljava/lang/String;

.field private pickPhotoBtn:Landroid/widget/Button;

.field private takePhotoBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 222
    new-instance v0, Lcom/kwlopen/sdk/activity/SelectPicActivity$1;

    invoke-direct {v0, p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity$1;-><init>(Lcom/kwlopen/sdk/activity/SelectPicActivity;)V

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method private doPhoto(ILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 187
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 189
    if-nez p2, :cond_0

    .line 190
    const-string v0, "\u9009\u62e9\u56fe\u7247\u6587\u4ef6\u51fa\u9519"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->photoUri:Landroid/net/Uri;

    .line 194
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->photoUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 195
    const-string v0, "\u9009\u62e9\u56fe\u7247\u6587\u4ef6\u51fa\u9519"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->photoUri:Landroid/net/Uri;

    .line 2022
    if-eqz p0, :cond_2

    if-nez v1, :cond_3

    .line 200
    :cond_2
    :goto_1
    iput-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->picPath:Ljava/lang/String;

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "imagePath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->picPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/b/a/a/d;->a(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->lastIntent:Landroid/content/Intent;

    const-string v1, "photo_path"

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->picPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->lastIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->finish()V

    goto :goto_0

    .line 2024
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_9

    invoke-static {p0, v1}, Landroid/provider/DocumentsContract;->isDocumentUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2088
    const-string v2, "com.android.externalstorage.documents"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2025
    if-eqz v2, :cond_4

    .line 2026
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2027
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2028
    aget-object v2, v1, v5

    .line 2029
    const-string v3, "primary"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2096
    :cond_4
    const-string v2, "com.android.providers.downloads.documents"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2032
    if-eqz v2, :cond_5

    .line 2033
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2034
    const-string v2, "content://downloads/public_downloads"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 2035
    invoke-static {p0, v1, v0, v0}, Lcom/b/a/a/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2104
    :cond_5
    const-string v2, "com.android.providers.media.documents"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2036
    if-eqz v2, :cond_2

    .line 2037
    invoke-static {v1}, Landroid/provider/DocumentsContract;->getDocumentId(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 2038
    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2039
    aget-object v2, v1, v5

    .line 2041
    const-string v3, "image"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2042
    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2048
    :cond_6
    :goto_2
    const-string v2, "_id=?"

    .line 2049
    new-array v3, v4, [Ljava/lang/String;

    aget-object v1, v1, v4

    aput-object v1, v3, v5

    .line 2050
    invoke-static {p0, v0, v2, v3}, Lcom/b/a/a/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2043
    :cond_7
    const-string v3, "video"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2044
    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 2045
    :cond_8
    const-string v3, "audio"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2046
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    goto :goto_2

    .line 2053
    :cond_9
    const-string v2, "content"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2112
    const-string v2, "com.google.android.apps.photos.content"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 2055
    if-eqz v2, :cond_a

    .line 2056
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2057
    :cond_a
    invoke-static {p0, v1, v0, v0}, Lcom/b/a/a/h;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 2060
    :cond_b
    const-string v2, "file"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2061
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 89
    const-string v0, "pop_layout"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->dialogLayout:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->dialogLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const-string v0, "btn_take_photo"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->takePhotoBtn:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->takePhotoBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const-string v0, "btn_pick_photo"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->pickPhotoBtn:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->pickPhotoBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const-string v0, "btn_cancel"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->cancelBtn:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->cancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->lastIntent:Landroid/content/Intent;

    .line 99
    return-void
.end method

.method private pickPhoto()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 156
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 157
    return-void
.end method

.method private takePhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 131
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 132
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 140
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->photoUri:Landroid/net/Uri;

    .line 141
    const-string v1, "output"

    iget-object v2, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->photoUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, v0, v4}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v0, "\u5185\u5b58\u5361\u4e0d\u5b58\u5728"

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 167
    if-ne p2, v1, :cond_0

    .line 168
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 170
    invoke-virtual {p0, v1, p3}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->setResult(ILandroid/content/Intent;)V

    .line 171
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->finish()V

    .line 177
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 178
    return-void

    .line 173
    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->doPhoto(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "pop_layout"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->finish()V

    .line 124
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "btn_take_photo"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 108
    :try_start_0
    sget-object v0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->IMAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/a/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kwlopen/sdk/activity/CameraActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "btn_pick_photo"

    invoke-static {p0, v1}, Lcom/b/a/a/f;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 116
    :try_start_1
    sget-object v0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->IMAGE_PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/b/a/a/b;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :goto_2
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->pickPhoto()V

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->requestWindowFeature(I)Z

    .line 71
    const-string v0, "kwlopen_select_pic_dialog"

    invoke-static {p0, v0}, Lcom/b/a/a/f;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->setContentView(I)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/b/a/a/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/openAccount/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->IMAGE_PATH:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->initView()V

    .line 75
    invoke-static {}, Lb/a/a/c;->a()Lb/a/a/c;

    move-result-object v0

    .line 1140
    const-string v1, "onEvent"

    invoke-virtual {v0, p0, v1}, Lb/a/a/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 82
    invoke-static {}, Lb/a/a/c;->a()Lb/a/a/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lb/a/a/c;->a(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public onEventMainThread(Lcom/kwlopen/sdk/camera/b;)V
    .locals 3

    .prologue
    .line 214
    .line 3006
    iget-object v0, p1, Lcom/kwlopen/sdk/camera/b;->a:Ljava/lang/String;

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6700\u7ec8\u9009\u62e9\u7684\u56fe\u7247\u8def\u5f84---\u300b"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/a/d;->a(Ljava/lang/String;)V

    .line 217
    iget-object v1, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->lastIntent:Landroid/content/Intent;

    const-string v2, "photo_path"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/kwlopen/sdk/activity/SelectPicActivity;->lastIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->finish()V

    .line 220
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/kwlopen/sdk/activity/SelectPicActivity;->finish()V

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
