.class public final enum Lcom/sleepycat/b/a;
.super Ljava/lang/Enum;
.source "CacheMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sleepycat/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/sleepycat/b/a;

.field public static final enum b:Lcom/sleepycat/b/a;

.field public static final enum c:Lcom/sleepycat/b/a;

.field public static final enum d:Lcom/sleepycat/b/a;

.field public static final enum e:Lcom/sleepycat/b/a;

.field public static final enum f:Lcom/sleepycat/b/a;

.field public static final enum g:Lcom/sleepycat/b/a;

.field private static final synthetic h:[Lcom/sleepycat/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/sleepycat/b/a;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/sleepycat/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    .line 100
    new-instance v0, Lcom/sleepycat/b/a;

    const-string v1, "KEEP_HOT"

    invoke-direct {v0, v1, v4}, Lcom/sleepycat/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a;->b:Lcom/sleepycat/b/a;

    .line 116
    new-instance v0, Lcom/sleepycat/b/a;

    const-string v1, "UNCHANGED"

    invoke-direct {v0, v1, v5}, Lcom/sleepycat/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    .line 143
    new-instance v0, Lcom/sleepycat/b/a;

    const-string v1, "MAKE_COLD"

    invoke-direct {v0, v1, v6}, Lcom/sleepycat/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a;->d:Lcom/sleepycat/b/a;

    .line 169
    new-instance v0, Lcom/sleepycat/b/a;

    const-string v1, "EVICT_LN"

    invoke-direct {v0, v1, v7}, Lcom/sleepycat/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a;->e:Lcom/sleepycat/b/a;

    .line 198
    new-instance v0, Lcom/sleepycat/b/a;

    const-string v1, "EVICT_BIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a;->f:Lcom/sleepycat/b/a;

    .line 225
    new-instance v0, Lcom/sleepycat/b/a;

    const-string v1, "DYNAMIC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/b/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sleepycat/b/a;->g:Lcom/sleepycat/b/a;

    .line 68
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sleepycat/b/a;

    sget-object v1, Lcom/sleepycat/b/a;->a:Lcom/sleepycat/b/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sleepycat/b/a;->b:Lcom/sleepycat/b/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sleepycat/b/a;->c:Lcom/sleepycat/b/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sleepycat/b/a;->d:Lcom/sleepycat/b/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sleepycat/b/a;->e:Lcom/sleepycat/b/a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sleepycat/b/a;->f:Lcom/sleepycat/b/a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sleepycat/b/a;->g:Lcom/sleepycat/b/a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sleepycat/b/a;->h:[Lcom/sleepycat/b/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sleepycat/b/a;
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/sleepycat/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/b/a;

    return-object v0
.end method

.method public static values()[Lcom/sleepycat/b/a;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/sleepycat/b/a;->h:[Lcom/sleepycat/b/a;

    invoke-virtual {v0}, [Lcom/sleepycat/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sleepycat/b/a;

    return-object v0
.end method
