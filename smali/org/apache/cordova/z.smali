.class public final Lorg/apache/cordova/z;
.super Ljava/lang/Object;
.source "PluginResult.java"


# static fields
.field public static e:[Ljava/lang/String;


# instance fields
.field final a:I

.field final b:I

.field c:Z

.field d:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 154
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "No result"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "OK"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Class not found"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Illegal access"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Instantiation error"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Malformed url"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "IO error"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Invalid action"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "JSON error"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Error"

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/cordova/z;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lorg/apache/cordova/z;->e:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/cordova/z;-><init>(ILjava/lang/String;)V

    .line 35
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/z;->c:Z

    .line 56
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/apache/cordova/z;->a:I

    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lorg/apache/cordova/z;->b:I

    .line 58
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/z;->f:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/z;->c:Z

    .line 38
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/apache/cordova/z;->a:I

    .line 39
    if-nez p2, :cond_0

    const/4 v0, 0x5

    :goto_0
    iput v0, p0, Lorg/apache/cordova/z;->b:I

    .line 40
    iput-object p2, p0, Lorg/apache/cordova/z;->d:Ljava/lang/String;

    .line 41
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/cordova/z;->c:Z

    .line 50
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lorg/apache/cordova/z;->a:I

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lorg/apache/cordova/z;->b:I

    .line 52
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/z;->f:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/cordova/z;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lorg/apache/cordova/z;->d:Ljava/lang/String;

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/cordova/z;->f:Ljava/lang/String;

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/apache/cordova/z;->f:Ljava/lang/String;

    return-object v0
.end method
