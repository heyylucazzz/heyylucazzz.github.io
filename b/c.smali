.class public final Lb/c;
.super Lde/robv/android/xposed/XC_MethodReplacement;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;


# direct methods
.method public constructor <init>(Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lb/c;->a:Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;

    .line 3
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodReplacement;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public final replaceHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;
    .registers 7

    .line 1
    const-string v0, "param"

    invoke-static {p1, v0}, Lc/a;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    instance-of v0, v0, Ljava/lang/String;

    iget-object v2, p0, Lb/c;->a:Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;

    if-nez v0, :cond_15

    invoke-static {v2, p1}, Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;->b(Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_15
    invoke-static {v2, p1}, Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;->a(Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V

    iget-object v0, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    aget-object v0, v0, v1

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v0, v3}, Lc/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    iget-object v3, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->method:Ljava/lang/reflect/Member;

    const-string v4, "null cannot be cast to non-null type java.lang.reflect.Method"

    invoke-static {v3, v4}, Lc/a;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/reflect/Method;

    .line 2
    iget-object v4, v2, Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;->b:Ljava/util/LinkedHashMap;

    .line 3
    invoke-virtual {v4, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_b3

    :try_start_36
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v3, v4}, Lc/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    goto/16 :goto_b2

    :cond_44
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lc/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_b2

    :catch_55
    move-exception p1

    goto :goto_a3

    :cond_57
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lc/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_b2

    :cond_68
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Lc/a;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 4
    const-string p1, "true"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_98

    .line 6
    const-string p1, "1"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_81

    goto :goto_98

    .line 8
    :cond_81
    const-string p1, "false"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_99

    .line 10
    const-string p1, "0"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_92

    goto :goto_99

    .line 12
    :cond_92
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_98
    :goto_98
    const/4 v1, 0x1

    .line 13
    :cond_99
    :goto_99
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b2

    :cond_9e
    invoke-static {v2, p1}, Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;->b(Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object v0
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_a2} :catch_55

    goto :goto_b2

    :goto_a3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImNotADeveloper"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    sget-object v0, Lc/e;->a:Lc/e;

    :goto_b2
    return-object v0

    :cond_b3
    invoke-static {v2, p1}, Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;->b(Lio/github/heyylucazzz/imnotadeveloper/xposed/Main;Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
