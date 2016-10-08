.class public final Lorg/apache/cordova/i;
.super Ljava/lang/Object;
.source "CordovaResourceApi.java"


# instance fields
.field public final a:Landroid/net/Uri;

.field public final b:Ljava/io/InputStream;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Landroid/content/res/AssetFileDescriptor;


# direct methods
.method constructor <init>(Landroid/net/Uri;Ljava/io/InputStream;Ljava/lang/String;JLandroid/content/res/AssetFileDescriptor;)V
    .locals 0

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lorg/apache/cordova/i;->a:Landroid/net/Uri;

    .line 435
    iput-object p2, p0, Lorg/apache/cordova/i;->b:Ljava/io/InputStream;

    .line 436
    iput-object p3, p0, Lorg/apache/cordova/i;->c:Ljava/lang/String;

    .line 437
    iput-wide p4, p0, Lorg/apache/cordova/i;->d:J

    .line 438
    iput-object p6, p0, Lorg/apache/cordova/i;->e:Landroid/content/res/AssetFileDescriptor;

    .line 439
    return-void
.end method
