.class public final enum Lu/aly/cq;
.super Ljava/lang/Enum;
.source "MiscInfo.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/cq;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/cq;

.field public static final enum b:Lu/aly/cq;

.field public static final enum c:Lu/aly/cq;

.field public static final enum d:Lu/aly/cq;

.field public static final enum e:Lu/aly/cq;

.field public static final enum f:Lu/aly/cq;

.field public static final enum g:Lu/aly/cq;

.field public static final enum h:Lu/aly/cq;

.field public static final enum i:Lu/aly/cq;

.field public static final enum j:Lu/aly/cq;

.field public static final enum k:Lu/aly/cq;

.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/cq;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic o:[Lu/aly/cq;


# instance fields
.field private final m:S

.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 71
    new-instance v0, Lu/aly/cq;

    const-string v1, "TIME_ZONE"

    const/4 v2, 0x0

    const-string v3, "time_zone"

    invoke-direct {v0, v1, v2, v5, v3}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->a:Lu/aly/cq;

    .line 72
    new-instance v0, Lu/aly/cq;

    const-string v1, "LANGUAGE"

    const-string v2, "language"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->b:Lu/aly/cq;

    .line 73
    new-instance v0, Lu/aly/cq;

    const-string v1, "COUNTRY"

    const-string v2, "country"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->c:Lu/aly/cq;

    .line 74
    new-instance v0, Lu/aly/cq;

    const-string v1, "LATITUDE"

    const-string v2, "latitude"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->d:Lu/aly/cq;

    .line 75
    new-instance v0, Lu/aly/cq;

    const-string v1, "LONGITUDE"

    const-string v2, "longitude"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->e:Lu/aly/cq;

    .line 76
    new-instance v0, Lu/aly/cq;

    const-string v1, "CARRIER"

    const/4 v2, 0x6

    const-string v3, "carrier"

    invoke-direct {v0, v1, v9, v2, v3}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->f:Lu/aly/cq;

    .line 77
    new-instance v0, Lu/aly/cq;

    const-string v1, "LATENCY"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "latency"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->g:Lu/aly/cq;

    .line 78
    new-instance v0, Lu/aly/cq;

    const-string v1, "DISPLAY_NAME"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "display_name"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->h:Lu/aly/cq;

    .line 79
    new-instance v0, Lu/aly/cq;

    const-string v1, "ACCESS_TYPE"

    const/16 v2, 0x8

    .line 83
    const/16 v3, 0x9

    const-string v4, "access_type"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->i:Lu/aly/cq;

    .line 84
    new-instance v0, Lu/aly/cq;

    const-string v1, "ACCESS_SUBTYPE"

    const/16 v2, 0x9

    const/16 v3, 0xa

    const-string v4, "access_subtype"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->j:Lu/aly/cq;

    .line 85
    new-instance v0, Lu/aly/cq;

    const-string v1, "USER_INFO"

    const/16 v2, 0xa

    const/16 v3, 0xb

    const-string v4, "user_info"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/cq;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/cq;->k:Lu/aly/cq;

    const/16 v0, 0xb

    new-array v0, v0, [Lu/aly/cq;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/cq;->a:Lu/aly/cq;

    aput-object v2, v0, v1

    sget-object v1, Lu/aly/cq;->b:Lu/aly/cq;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/cq;->c:Lu/aly/cq;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/cq;->d:Lu/aly/cq;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/cq;->e:Lu/aly/cq;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/cq;->f:Lu/aly/cq;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lu/aly/cq;->g:Lu/aly/cq;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/cq;->h:Lu/aly/cq;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/cq;->i:Lu/aly/cq;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/cq;->j:Lu/aly/cq;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lu/aly/cq;->k:Lu/aly/cq;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/cq;->o:[Lu/aly/cq;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/cq;->l:Ljava/util/Map;

    .line 90
    const-class v0, Lu/aly/cq;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 90
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/cq;

    .line 91
    sget-object v2, Lu/aly/cq;->l:Ljava/util/Map;

    .line 1157
    iget-object v3, v0, Lu/aly/cq;->n:Ljava/lang/String;

    .line 91
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 148
    iput-short p3, p0, Lu/aly/cq;->m:S

    .line 149
    iput-object p4, p0, Lu/aly/cq;->n:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/cq;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/cq;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/cq;

    return-object v0
.end method

.method public static values()[Lu/aly/cq;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/cq;->o:[Lu/aly/cq;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/cq;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 153
    iget-short v0, p0, Lu/aly/cq;->m:S

    return v0
.end method
