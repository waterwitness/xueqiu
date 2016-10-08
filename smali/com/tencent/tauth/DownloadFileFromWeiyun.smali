.class public Lcom/tencent/tauth/DownloadFileFromWeiyun;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static final DOWNLOAD_GETPERMISSION_SUCCESS:I = 0x0

.field private static final DOWNLOAD_MUSIC_URL:Ljava/lang/String; = "https://graph.qq.com/weiyun/download_music"

.field private static final DOWNLOAD_PIC_URL:Ljava/lang/String; = "https://graph.qq.com/weiyun/download_photo"

.field private static final DOWNLOAD_STATUS_ERROR:I = 0x3

.field private static final DOWNLOAD_STATUS_PROGRESS:I = 0x2

.field private static final DOWNLOAD_STATUS_SUCCESS:I = 0x1

.field private static final DOWNLOAD_THUMB_URL:Ljava/lang/String; = "https://graph.qq.com/weiyun/get_photo_thumb"

.field private static final DOWNLOAD_VIDEO_URL:Ljava/lang/String; = "https://graph.qq.com/weiyun/download_video"

.field private static final oauth_consumer_key:Ljava/lang/String; = "222222"


# instance fields
.field private MAX_ERROR_TIMES:I

.field private current_actiontype:I

.field private dir:Ljava/lang/String;

.field private dl_cookie_name:Ljava/lang/String;

.field private dl_cookie_value:Ljava/lang/String;

.field private dl_encrypt_url:Ljava/lang/String;

.field private dl_svr_host:Ljava/lang/String;

.field private dl_svr_port:I

.field private dl_thumb_size:Ljava/lang/String;

.field private isOriginal:Z

.field private mFileid:Ljava/lang/String;

.field private mFilename:Ljava/lang/String;

.field private mFilesize:J

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

.field private mRequestUrl:Ljava/lang/String;

.field private mTencent:Lcom/tencent/tauth/Tencent;

.field private mThumb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tencent/tauth/Tencent;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->MAX_ERROR_TIMES:I

    .line 131
    new-instance v0, Lcom/tencent/tauth/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/tauth/a;-><init>(Lcom/tencent/tauth/DownloadFileFromWeiyun;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;

    .line 74
    iput-object p2, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFileid:Ljava/lang/String;

    .line 75
    iput-object p7, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

    .line 76
    int-to-long v0, p4

    iput-wide v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J

    .line 77
    iput-object p6, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilename:Ljava/lang/String;

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->isOriginal:Z

    .line 79
    iput-object p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dir:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 86
    :cond_0
    iput p3, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->current_actiontype:I

    .line 87
    iget v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->current_actiontype:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    :pswitch_0
    return-void

    .line 89
    :pswitch_1
    const-string v0, "https://graph.qq.com/weiyun/download_photo"

    iput-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mRequestUrl:Ljava/lang/String;

    goto :goto_0

    .line 92
    :pswitch_2
    const-string v0, "https://graph.qq.com/weiyun/download_music"

    iput-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mRequestUrl:Ljava/lang/String;

    goto :goto_0

    .line 95
    :pswitch_3
    const-string v0, "https://graph.qq.com/weiyun/download_video"

    iput-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mRequestUrl:Ljava/lang/String;

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public constructor <init>(Lcom/tencent/tauth/Tencent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;)V
    .locals 2

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->MAX_ERROR_TIMES:I

    .line 131
    new-instance v0, Lcom/tencent/tauth/a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tencent/tauth/a;-><init>(Lcom/tencent/tauth/DownloadFileFromWeiyun;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object p2, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFileid:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mThumb:Ljava/lang/String;

    .line 116
    iput-object p6, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "thumb__"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilename:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->isOriginal:Z

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dir:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 127
    :cond_0
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->current_actiontype:I

    .line 128
    const-string v0, "https://graph.qq.com/weiyun/get_photo_thumb"

    iput-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mRequestUrl:Ljava/lang/String;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_encrypt_url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilename:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/tencent/tauth/DownloadFileFromWeiyun;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_encrypt_url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFileid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Lcom/tencent/tauth/Tencent;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mRequestUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Z
    .locals 1

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->isOriginal:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)J
    .locals 2

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilesize:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->MAX_ERROR_TIMES:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/tencent/tauth/DownloadFileFromWeiyun;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_value:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/tencent/tauth/DownloadFileFromWeiyun;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_cookie_value:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/tencent/tauth/DownloadFileFromWeiyun;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_port:I

    return v0
.end method

.method static synthetic access$402(Lcom/tencent/tauth/DownloadFileFromWeiyun;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_port:I

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/tencent/tauth/DownloadFileFromWeiyun;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_svr_host:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mThumb:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_thumb_size:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/tencent/tauth/DownloadFileFromWeiyun;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dl_thumb_size:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/tencent/tauth/DownloadFileFromWeiyun;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->doDownload()V

    return-void
.end method

.method static synthetic access$900(Lcom/tencent/tauth/DownloadFileFromWeiyun;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dir:Ljava/lang/String;

    return-object v0
.end method

.method private doDownload()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Lcom/tencent/tauth/c;

    invoke-direct {v0, p0}, Lcom/tencent/tauth/c;-><init>(Lcom/tencent/tauth/DownloadFileFromWeiyun;)V

    invoke-virtual {v0}, Lcom/tencent/tauth/c;->start()V

    .line 399
    return-void
.end method

.method private getDownloadPermission()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/tencent/tauth/b;

    invoke-direct {v0, p0}, Lcom/tencent/tauth/b;-><init>(Lcom/tencent/tauth/DownloadFileFromWeiyun;)V

    invoke-virtual {v0}, Lcom/tencent/tauth/b;->start()V

    .line 250
    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dir:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->dir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;->onDownloadSuccess(Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/tencent/tauth/DownloadFileFromWeiyun;->mListener:Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;

    invoke-interface {v0}, Lcom/tencent/tauth/IDownloadFileFromWeiyunStatus;->onPrepareStart()V

    .line 183
    invoke-direct {p0}, Lcom/tencent/tauth/DownloadFileFromWeiyun;->getDownloadPermission()V

    goto :goto_0
.end method
