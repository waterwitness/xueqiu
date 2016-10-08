.class public Lcom/xueqiu/android/common/pdf/PDFViewerActivity;
.super Lcom/xueqiu/android/common/b;
.source "PDFViewerActivity.java"


# instance fields
.field j:Z

.field private k:Landroid/widget/FrameLayout;

.field private p:Lcom/a/a/i;

.field private q:Landroid/widget/FrameLayout;

.field private r:Lcom/xueqiu/android/common/pdf/RoundProgressBar;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/io/File;

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 60
    iput-boolean v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->j:Z

    .line 62
    iput-boolean v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->s:Z

    .line 64
    iput-object v1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->t:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->u:Ljava/io/File;

    .line 68
    new-instance v0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$1;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$1;-><init>(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->v:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;)Lcom/xueqiu/android/common/pdf/RoundProgressBar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->r:Lcom/xueqiu/android/common/pdf/RoundProgressBar;

    return-object v0
.end method

.method static synthetic a(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 42
    .line 5149
    invoke-virtual {p0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5153
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 5154
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 5155
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 5157
    invoke-virtual {v1}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    .line 5160
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5161
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->u:Ljava/io/File;

    iget-object v5, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->t:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 5162
    const/16 v0, 0x400

    new-array v5, v0, [B

    .line 5163
    const-wide/16 v0, 0x0

    .line 5166
    :goto_0
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 5167
    int-to-long v8, v6

    add-long/2addr v0, v8

    .line 5168
    const-wide/16 v8, 0x64

    mul-long/2addr v8, v0

    int-to-long v10, v2

    div-long/2addr v8, v10

    long-to-int v7, v8

    .line 5169
    rem-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_0

    .line 5170
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 5171
    const/4 v9, 0x1

    iput v9, v8, Landroid/os/Message;->what:I

    .line 5172
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iput-object v7, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5173
    iget-object v7, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->v:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5175
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5184
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 5185
    :cond_1
    :goto_1
    return-void

    .line 5178
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 5179
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 5180
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 5182
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->v:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static synthetic b(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->j()V

    return-void
.end method

.method private j()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->s:Z

    if-eqz v0, :cond_0

    .line 226
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->q:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 199
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->u:Ljava/io/File;

    iget-object v2, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->t:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 201
    const v0, 0x7f07026b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->p:Lcom/a/a/i;

    .line 3062
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Lcom/a/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "does not exist."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/a/a/a/a;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3063
    :cond_2
    new-instance v2, Lcom/a/a/j;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v1, v3, v4}, Lcom/a/a/j;-><init>(Lcom/a/a/i;Landroid/net/Uri;B)V

    .line 3118
    iput v5, v2, Lcom/a/a/j;->c:I

    .line 3144
    iput-boolean v4, v2, Lcom/a/a/j;->d:Z

    .line 4098
    iput-boolean v5, v2, Lcom/a/a/j;->a:Z

    .line 207
    new-instance v1, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$3;

    invoke-direct {v1, p0, v0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$3;-><init>(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;Ljava/io/File;)V

    .line 4108
    iput-object v1, v2, Lcom/a/a/j;->b:Lcom/a/a/b/b;

    .line 221
    invoke-virtual {v2}, Lcom/a/a/j;->a()V

    .line 4267
    iput-boolean v4, p0, Lcom/xueqiu/android/common/b;->m:Z

    .line 223
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->p:Lcom/a/a/i;

    invoke-virtual {v0, v4}, Lcom/a/a/i;->setVisibility(I)V

    .line 225
    iput-boolean v5, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->s:Z

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    const v7, 0x7f0800a2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, -0x1

    .line 88
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->finish()V

    .line 121
    :goto_0
    return-void

    .line 95
    :cond_0
    const-string v3, "pdf_file_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 96
    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->t:Ljava/lang/String;

    .line 2066
    iget-object v0, p0, Landroid/support/v7/a/f;->i:Landroid/support/v7/a/g;

    invoke-virtual {v0}, Landroid/support/v7/a/g;->b()Landroid/support/v7/a/a;

    move-result-object v0

    .line 97
    iget-object v4, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/support/v7/a/a;->a(Ljava/lang/CharSequence;)V

    .line 2124
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->k:Landroid/widget/FrameLayout;

    .line 2125
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->k:Landroid/widget/FrameLayout;

    const v4, 0x7f0d000b

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2127
    new-instance v0, Lcom/a/a/i;

    invoke-direct {v0, p0}, Lcom/a/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->p:Lcom/a/a/i;

    .line 2128
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->p:Lcom/a/a/i;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/a/a/i;->setVisibility(I)V

    .line 2130
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->k:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->p:Lcom/a/a/i;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2132
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->q:Landroid/widget/FrameLayout;

    .line 2133
    new-instance v0, Lcom/xueqiu/android/common/pdf/RoundProgressBar;

    invoke-direct {v0, p0}, Lcom/xueqiu/android/common/pdf/RoundProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->r:Lcom/xueqiu/android/common/pdf/RoundProgressBar;

    .line 2135
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->r:Lcom/xueqiu/android/common/pdf/RoundProgressBar;

    const v4, 0x7f0d00a6

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/pdf/RoundProgressBar;->setCricleColor(I)V

    .line 2136
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->r:Lcom/xueqiu/android/common/pdf/RoundProgressBar;

    const v4, 0x7f0d0012

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/pdf/RoundProgressBar;->setCricleProgressColor(I)V

    .line 2138
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->r:Lcom/xueqiu/android/common/pdf/RoundProgressBar;

    const v4, 0x7f0d007d

    invoke-static {v4}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/pdf/RoundProgressBar;->setTextColor(I)V

    .line 2139
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->r:Lcom/xueqiu/android/common/pdf/RoundProgressBar;

    const/high16 v4, 0x41300000    # 11.0f

    invoke-static {v4}, Lcom/xueqiu/android/base/util/ay;->a(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/xueqiu/android/common/pdf/RoundProgressBar;->setTextSize(F)V

    .line 2141
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->q:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->r:Lcom/xueqiu/android/common/pdf/RoundProgressBar;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v7}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v6

    invoke-static {v7}, Lcom/xueqiu/android/base/r;->c(I)I

    move-result v7

    const/16 v8, 0x11

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2142
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->k:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->q:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2144
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->setContentView(Landroid/view/View;)V

    .line 101
    new-instance v0, Ljava/io/File;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v4}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    const-string v5, "xueqiu_pdf_temp"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->u:Ljava/io/File;

    .line 103
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->u:Ljava/io/File;

    .line 2285
    if-eqz v0, :cond_1

    .line 2286
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2287
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 105
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->u:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->u:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_3
    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    .line 106
    const v0, 0x7f07026c

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->finish()V

    goto/16 :goto_0

    .line 2291
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    array-length v4, v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_1

    .line 2293
    :try_start_0
    invoke-static {v0}, Lcom/xueqiu/android/base/util/k;->b(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2295
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 105
    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    .line 111
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->u:Ljava/io/File;

    iget-object v2, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->t:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    invoke-direct {p0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->j()V

    goto/16 :goto_0

    .line 114
    :cond_6
    sget-object v0, Lcom/xueqiu/android/base/util/ag;->c:Lrx/h;

    new-instance v1, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$2;

    invoke-direct {v1, p0, v3}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity$2;-><init>(Lcom/xueqiu/android/common/pdf/PDFViewerActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lrx/h;->a(Lrx/c/a;)Lrx/j;

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v4, [I

    const v2, 0x7f0100a3

    aput v2, v1, v3

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 238
    const-string v1, "\u66f4\u591a"

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v1

    .line 239
    invoke-interface {v1}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    .line 240
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 241
    invoke-static {v2, v5}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 243
    const v0, 0x7f07026d

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v5, v3, v0}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 244
    const/4 v0, 0x3

    const v2, 0x7f07033f

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v0, v3, v2}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 245
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .prologue
    const v5, 0x7f070250

    const/4 v0, 0x1

    .line 250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 252
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->u:Ljava/io/File;

    iget-object v3, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->t:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    const-string v1, "\u6587\u4ef6\u4e0b\u8f7d\u51fa\u9519, \u8bf7\u91cd\u8bd5!"

    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    .line 281
    :goto_0
    return v0

    .line 257
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    invoke-virtual {p0, v0}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    const v0, 0x7f07026e

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_1

    .line 263
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 264
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->u:Ljava/io/File;

    iget-object v3, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->t:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 266
    invoke-static {v5}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0

    .line 270
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "xueqiu-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 271
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 272
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xueqiu/android/base/util/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 274
    if-eqz v1, :cond_4

    .line 275
    const v1, 0x7f07026f

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/xueqiu/android/common/pdf/PDFViewerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_4
    invoke-static {v5}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 190
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 191
    return-void
.end method
