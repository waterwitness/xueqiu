.class public final Lcom/pingan/b/c/m;
.super Ljava/lang/Object;
.source "Zone.java"


# static fields
.field public static final a:Lcom/pingan/b/c/m;

.field public static final b:Lcom/pingan/b/c/m;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 5
    new-instance v0, Lcom/pingan/b/c/m;

    const-string v1, "iobs.pingan.com.cn"

    const-string v2, "iobs.pingan.com.cn"

    const-string v3, "iobs.pingan.com.cn"

    const-string v4, "iobs.pingan.com.cn"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pingan/b/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/pingan/b/c/m;->a:Lcom/pingan/b/c/m;

    .line 7
    new-instance v0, Lcom/pingan/b/c/m;

    const-string v1, "iobs.pingan.com.cn"

    const-string v2, "iobs.pingan.com.cn"

    const-string v3, "iobs.pingan.com.cn"

    const-string v4, "iobs.pingan.com.cn"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pingan/b/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/pingan/b/c/m;->b:Lcom/pingan/b/c/m;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/pingan/b/c/m;->c:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/pingan/b/c/m;->d:Ljava/lang/String;

    .line 18
    iput-object p3, p0, Lcom/pingan/b/c/m;->e:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/pingan/b/c/m;->f:Ljava/lang/String;

    .line 20
    return-void
.end method
