.class public final enum Lu/aly/ee;
.super Ljava/lang/Enum;
.source "UALogEntry.java"

# interfaces
.implements Lu/aly/fg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lu/aly/ee;",
        ">;",
        "Lu/aly/fg;"
    }
.end annotation


# static fields
.field public static final enum a:Lu/aly/ee;

.field public static final enum b:Lu/aly/ee;

.field public static final enum c:Lu/aly/ee;

.field public static final enum d:Lu/aly/ee;

.field public static final enum e:Lu/aly/ee;

.field public static final enum f:Lu/aly/ee;

.field public static final enum g:Lu/aly/ee;

.field public static final enum h:Lu/aly/ee;

.field public static final enum i:Lu/aly/ee;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lu/aly/ee;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic m:[Lu/aly/ee;


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

    .line 63
    new-instance v0, Lu/aly/ee;

    const-string v1, "CLIENT_STATS"

    const/4 v2, 0x0

    const-string v3, "client_stats"

    invoke-direct {v0, v1, v2, v5, v3}, Lu/aly/ee;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ee;->a:Lu/aly/ee;

    .line 64
    new-instance v0, Lu/aly/ee;

    const-string v1, "APP_INFO"

    const-string v2, "app_info"

    invoke-direct {v0, v1, v5, v6, v2}, Lu/aly/ee;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ee;->b:Lu/aly/ee;

    .line 65
    new-instance v0, Lu/aly/ee;

    const-string v1, "DEVICE_INFO"

    const-string v2, "device_info"

    invoke-direct {v0, v1, v6, v7, v2}, Lu/aly/ee;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ee;->c:Lu/aly/ee;

    .line 66
    new-instance v0, Lu/aly/ee;

    const-string v1, "MISC_INFO"

    const-string v2, "misc_info"

    invoke-direct {v0, v1, v7, v8, v2}, Lu/aly/ee;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ee;->d:Lu/aly/ee;

    .line 67
    new-instance v0, Lu/aly/ee;

    const-string v1, "ACTIVATE_MSG"

    const-string v2, "activate_msg"

    invoke-direct {v0, v1, v8, v9, v2}, Lu/aly/ee;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ee;->e:Lu/aly/ee;

    .line 68
    new-instance v0, Lu/aly/ee;

    const-string v1, "INSTANT_MSGS"

    const/4 v2, 0x6

    const-string v3, "instant_msgs"

    invoke-direct {v0, v1, v9, v2, v3}, Lu/aly/ee;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ee;->f:Lu/aly/ee;

    .line 69
    new-instance v0, Lu/aly/ee;

    const-string v1, "SESSIONS"

    const/4 v2, 0x6

    const/4 v3, 0x7

    const-string v4, "sessions"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ee;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ee;->g:Lu/aly/ee;

    .line 70
    new-instance v0, Lu/aly/ee;

    const-string v1, "IMPRINT"

    const/4 v2, 0x7

    const/16 v3, 0x8

    const-string v4, "imprint"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ee;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ee;->h:Lu/aly/ee;

    .line 71
    new-instance v0, Lu/aly/ee;

    const-string v1, "ID_TRACKING"

    const/16 v2, 0x8

    const/16 v3, 0x9

    const-string v4, "id_tracking"

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/ee;-><init>(Ljava/lang/String;ISLjava/lang/String;)V

    sput-object v0, Lu/aly/ee;->i:Lu/aly/ee;

    const/16 v0, 0x9

    new-array v0, v0, [Lu/aly/ee;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/ee;->a:Lu/aly/ee;

    aput-object v2, v0, v1

    sget-object v1, Lu/aly/ee;->b:Lu/aly/ee;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/ee;->c:Lu/aly/ee;

    aput-object v1, v0, v6

    sget-object v1, Lu/aly/ee;->d:Lu/aly/ee;

    aput-object v1, v0, v7

    sget-object v1, Lu/aly/ee;->e:Lu/aly/ee;

    aput-object v1, v0, v8

    sget-object v1, Lu/aly/ee;->f:Lu/aly/ee;

    aput-object v1, v0, v9

    const/4 v1, 0x6

    sget-object v2, Lu/aly/ee;->g:Lu/aly/ee;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/ee;->h:Lu/aly/ee;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/ee;->i:Lu/aly/ee;

    aput-object v2, v0, v1

    sput-object v0, Lu/aly/ee;->m:[Lu/aly/ee;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ee;->j:Ljava/util/Map;

    .line 76
    const-class v0, Lu/aly/ee;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 76
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/ee;

    .line 77
    sget-object v2, Lu/aly/ee;->j:Ljava/util/Map;

    .line 1139
    iget-object v3, v0, Lu/aly/ee;->l:Ljava/lang/String;

    .line 77
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ISLjava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 130
    iput-short p3, p0, Lu/aly/ee;->k:S

    .line 131
    iput-object p4, p0, Lu/aly/ee;->l:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/ee;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lu/aly/ee;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/ee;

    return-object v0
.end method

.method public static values()[Lu/aly/ee;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lu/aly/ee;->m:[Lu/aly/ee;

    array-length v1, v0

    new-array v2, v1, [Lu/aly/ee;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final a()S
    .locals 1

    .prologue
    .line 135
    iget-short v0, p0, Lu/aly/ee;->k:S

    return v0
.end method
