.class public final enum Lu/aly/eq;
.super Ljava/lang/Enum;
.source "UMEnvelope.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/eq;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/eq;

.field public static final enum b:Lu/aly/eq;

.field public static final enum c:Lu/aly/eq;

.field public static final enum d:Lu/aly/eq;

.field public static final enum e:Lu/aly/eq;

.field public static final enum f:Lu/aly/eq;

.field public static final enum g:Lu/aly/eq;

.field public static final enum h:Lu/aly/eq;

.field public static final enum i:Lu/aly/eq;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/eq;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic m:[Lu/aly/eq;


# instance fields
.field private final k:S

.field private final l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 65
    new-instance v0, Lu/aly/eq;

    const-string v1, "VERSION"

    const/4 v2, 0x0

    const-string v3, "version"

    invoke-direct {v0, v1, v2, v5, v3}, Lu/aly/eq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/eq;->a:Lu/aly/eq;

    .line 66
    new-instance v0, Lu/aly/eq;

    const-string v1, "ADDRESS"

    const-string v2, "address"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/eq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/eq;->b:Lu/aly/eq;

    .line 67
    new-instance v0, Lu/aly/eq;

    const-string v1, "SIGNATURE"

    const-string v2, "signature"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/eq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/eq;->c:Lu/aly/eq;

    .line 68
    new-instance v0, Lu/aly/eq;

    const-string v1, "SERIAL_NUM"

    const-string v2, "serial_num"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/eq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/eq;->d:Lu/aly/eq;

    .line 69
    new-instance v0, Lu/aly/eq;

    const-string v1, "TS_SECS"

    const-string v2, "ts_secs"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/eq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/eq;->e:Lu/aly/eq;

    .line 70
    new-instance v0, Lu/aly/eq;

    const-string v1, "LENGTH"

    const/4 v2, 0x6

    const-string v3, "length"

    invoke-direct {v0, v1, v9, v2, v3}, Lu/aly/eq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/eq;->f:Lu/aly/eq;

    .line 71
    new-instance v0, Lu/aly/eq;

    const-string v1, "ENTITY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "entity"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/eq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/eq;->g:Lu/aly/eq;

    .line 72
    new-instance v0, Lu/aly/eq;

    const-string v1, "GUID"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "guid"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/eq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/eq;->h:Lu/aly/eq;

    .line 73
    new-instance v0, Lu/aly/eq;

    const-string v1, "CHECKSUM"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "checksum"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/eq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/eq;->i:Lu/aly/eq;

    const/16 v0, 0x9

    new-array v0, v0, [Lu/aly/eq;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/eq;->a:Lu/aly/eq;

    aput-object v2, v0, v1

    sget-object v1, Lu/aly/eq;->b:Lu/aly/eq;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/eq;->c:Lu/aly/eq;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/eq;->d:Lu/aly/eq;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/eq;->e:Lu/aly/eq;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/eq;->f:Lu/aly/eq;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lu/aly/eq;->g:Lu/aly/eq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/eq;->h:Lu/aly/eq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/eq;->i:Lu/aly/eq;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/eq;->m:[Lu/aly/eq;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/eq;->j:Ljava/util/Map;

    .line 78
    const-class v0, Lu/aly/eq;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    return-void

    .line 78
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/eq;

    .line 79
    sget-object v2, Lu/aly/eq;->j:Ljava/util/Map;

    .line 1141
    iget-object v3, v0, Lu/aly/eq;->l:Ljava/lang/String;

    .line 79
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 132
    iput-short p3, p0, Lu/aly/eq;->k:S

    .line 133
    iput-object p4, p0, Lu/aly/eq;->l:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/eq;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/eq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/eq;

    return-object v0
.end method

.method public static values()[Lu/aly/eq;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/eq;->m:[Lu/aly/eq;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/eq;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 137
    iget-short v0, p0, Lu/aly/eq;->k:S

    return v0
.end method
