.class public final enum Lcom/sleepycat/b/c/ak;
.super Ljava/lang/Enum;
.source "GetMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/c/ak;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/c/ak;

.field public static final enum b:Lcom/sleepycat/b/c/ak;

.field public static final enum c:Lcom/sleepycat/b/c/ak;

.field public static final enum d:Lcom/sleepycat/b/c/ak;

.field public static final enum e:Lcom/sleepycat/b/c/ak;

.field public static final enum f:Lcom/sleepycat/b/c/ak;

.field private static final synthetic i:[Lcom/sleepycat/b/c/ak;


# instance fields
.field public g:Z

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    new-instance v0, Lcom/sleepycat/b/c/ak;

    const-string v1, "NEXT"

    const-string v2, "NEXT"

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/sleepycat/b/c/ak;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    .line 16
    new-instance v0, Lcom/sleepycat/b/c/ak;

    const-string v1, "PREV"

    const-string v2, "PREV"

    invoke-direct {v0, v1, v5, v2, v4}, Lcom/sleepycat/b/c/ak;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/b/c/ak;->b:Lcom/sleepycat/b/c/ak;

    .line 17
    new-instance v0, Lcom/sleepycat/b/c/ak;

    const-string v1, "NEXT_DUP"

    const-string v2, "NEXT_DUP"

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/sleepycat/b/c/ak;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/b/c/ak;->c:Lcom/sleepycat/b/c/ak;

    .line 18
    new-instance v0, Lcom/sleepycat/b/c/ak;

    const-string v1, "PREV_DUP"

    const-string v2, "PREV_DUP"

    invoke-direct {v0, v1, v7, v2, v4}, Lcom/sleepycat/b/c/ak;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/b/c/ak;->d:Lcom/sleepycat/b/c/ak;

    .line 19
    new-instance v0, Lcom/sleepycat/b/c/ak;

    const-string v1, "NEXT_NODUP"

    const-string v2, "NEXT_NODUP"

    invoke-direct {v0, v1, v8, v2, v5}, Lcom/sleepycat/b/c/ak;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/b/c/ak;->e:Lcom/sleepycat/b/c/ak;

    .line 20
    new-instance v0, Lcom/sleepycat/b/c/ak;

    const-string v1, "PREV_NODUP"

    const/4 v2, 0x5

    const-string v3, "PREV_NODUP"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sleepycat/b/c/ak;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    sput-object v0, Lcom/sleepycat/b/c/ak;->f:Lcom/sleepycat/b/c/ak;

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sleepycat/b/c/ak;

    sget-object v1, Lcom/sleepycat/b/c/ak;->a:Lcom/sleepycat/b/c/ak;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/c/ak;->b:Lcom/sleepycat/b/c/ak;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/c/ak;->c:Lcom/sleepycat/b/c/ak;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/b/c/ak;->d:Lcom/sleepycat/b/c/ak;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sleepycat/b/c/ak;->e:Lcom/sleepycat/b/c/ak;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sleepycat/b/c/ak;->f:Lcom/sleepycat/b/c/ak;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/c/ak;->i:[Lcom/sleepycat/b/c/ak;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/sleepycat/b/c/ak;->h:Ljava/lang/String;

    .line 27
    iput-boolean p4, p0, Lcom/sleepycat/b/c/ak;->g:Z

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/c/ak;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/sleepycat/b/c/ak;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/c/ak;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/c/ak;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sleepycat/b/c/ak;->i:[Lcom/sleepycat/b/c/ak;

    invoke-virtual {v0}, [Lcom/sleepycat/b/c/ak;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/c/ak;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sleepycat/b/c/ak;->h:Ljava/lang/String;

    return-object v0
.end method
